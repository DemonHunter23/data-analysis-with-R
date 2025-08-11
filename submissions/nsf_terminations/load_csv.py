import json
from pandas import DataFrame as df
import os
from collections import defaultdict
import urllib.request
import zipfile

def flatten_dict(d):
    res = {}
    for k,v in d.items():
        #Note that all key,value pairs inside nested dicts (e.g. "inst") in the .json files already have the key as a prefix.
        if type(v) == dict:
            for k2,v2 in v.items():
                res[k2] = v2
        #We don't use the data contained in lists as it isn't contained in the "NSF Terminations" dataset either.
        elif type(v) != list:
            res[k] = v
    return res

def load_year_csv(year=2025):
    transposed_data = defaultdict(list)
    zipname = f"{year}.zip"
    with open(zipname,"wb") as zipf:
        zipdata = urllib.request.urlopen(f"https://www.nsf.gov/awardsearch/download?DownloadFileName={year}&All=true&isJson=true").read()
        zipf.write(zipdata)
    with zipfile.ZipFile(zipname,'r') as archive:
        for fname in archive.namelist():
            if fname.endswith(".json"):
                with archive.open(fname,"r") as f: 
                    for k,v in flatten_dict(json.load(f)).items():
                        transposed_data[k].append(v)
    os.remove(zipname)
    #Remove columns with missing values
    bad_columns = []
    for k,v in transposed_data.items():
        if len(v) != len(transposed_data["awd_id"]):
            bad_columns.append(k)
    for k in bad_columns:
        del(transposed_data[k])
    df.from_dict(transposed_data).to_csv(f"total_grants_{year}.csv")

for year in [2020,2021,2022,2023,2024,2025]:
    load_year_csv(year)
