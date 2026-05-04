# "Data Literacy: Introduction to R"

[Veronika Batzdorfer](https://sociology.itz.kit.edu/21_138.php) [veronika.batzdorfer@kit.edu](mailto:veronika.batzdorfer@kit.edu)


---

# Course description
The open source software package `R` is free of charge and offers standard data analysis procedures as well as a comprehensive repertoire of highly specialized processes and procedures, even for complex applications. After providing an introduction to the basic concepts and functionalities of `R`, we will go through a prototypical data analysis workflow in the course: import, wrangling, exploration, (basic) analysis, reporting.


# Learning objectives
By the end of the course participants should be:

- Comfortable with using `R` and *RStudio*
- Able to import, wrangle, and explore their data with `R`
- Able to conduct basic visualizations and analyses of their data with `R`
- Able to generate reproducible research reports using `R Markdown`


# Course Schedule


### Day 1: [08-05]
| Day         | Time            | Topic                                |
|-------------|-----------------|--------------------------------------|
| **Friday** | **09:00 - 10:00** | **[Onboarding & Getting Started with R](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/1b9c66fcea9c93f1a45dad16337f0593e7933b5d/slides/1_1_Getting_Started.html)** |
| *Friday* | *10:00 - 10:10*  | *Break*                             |
| **Friday** | **10:10 - 12:00** | **[Data Types & Loading](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/3112225ee46c19428e3145cc571efd56e4401f10/slides/1_2_Data_Types_Import_Export.html)**  & **[Data Wrangling](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/40ebe77dadc8fee036ea06afc61d32be0d3efa02/slides/2_1_Data_Wrangling_Part1.html)**           |
|*Friday*     | *12:00 - 13:00* | *Lunch Break*                       |
| **Friday** | **13:00 - 14:45** | **[Data Wrangling2](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/73346ef3ee479ff07361d0779ae1ef9795666fe1/slides/2_2_Data_Wrangling_Part2.html)** & **[EDA](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/20ffdc95b48318274425cbde9a753df3c1c4baf4/slides/3_1_Exploratory_Data_Analysis.html)**   |
| *Friday* | *14:45 - 15:00*  | *Break*                             |
| **Friday** | **15:00 - 16:00**  | **[Data Workflows & Github](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/aa874fa29b78263c80af38a82c16e6235776514b/slides/1_3_Appendix_Setup_Workflow_Help.html)**     |
| *Friday* | *16:00 - 16:10*  | *Break*                             |
| **Friday** | **16:10 - 17:00**  | **Tidy Tuesday -- Group Work**     |

---
<!--
### Day 2: [21-11]
| Day         | Time            | Topic                                |
|-------------|-----------------|--------------------------------------|
| **Friday** | **09:00 - 10:45** |**[Data Visualisation](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/1b070518acefd90c06c79ddf4ca58b7822fe9529/slides/3_2_Data_Visualization_Part_1.html)** & **[Confirmatory Analyses](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/09522ad64ade5f618a15a3be53d305b7463a5a25/slides/4_1_Confirmatory_Data_Analysis.html)**   |
| *Friday* | *10:45 - 11:00*  | *Break*                             |
| **Friday** | **11:00 - 12:00** | **[Large Language Models & Wikipedia](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/1f08cd259f42b841aef850c1fafc383e235c3f1f/slides/5_3_ApplicationR.html)**            |
|*Friday*     | *12:00 - 13:00* | *Lunch Break*                       |
| **Friday** | **13:00 - 14:45** | **[Reproducible Reporting with R Markdown](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/a4070c43d4b38ea2a76d5267550edf79ee61db59/slides/5_1_Reporting_w_Rmarkdown.html)**      |
| *Friday* | *14:45 - 15:00*  | *Break*                             |
| **Friday** | **15:00 - 16:00**  | **Group exploration**     |
| *Friday* | *16:00 - 16:10*  | *Break*                             |
| **Friday** | **16:10 - 17:00**  | **Group pitches & Wrap-up**     |

---

<!--### Day 3: [23-06]
| Day         | Time            | Topic                                |
|-------------|-----------------|--------------------------------------|
| **Monday** | **12:00 - 13:30** | **[Recap & Confirmatory Analyses](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/d12f9a43098bfccdbfaa6e02f6dcaa99c1e54cd4/slides/4_1_Confirmatory_Data_Analysis.html)** |
| *Monday* | *13:30 - 14:30*  | *Break*                             |
| **Monday** | **14:30 - 15:00** | **[Reproducible Reporting with R Markdown](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/2e7fcea4be42f0e941eabae26ea1ac66116179a4/slides/5_1_Reporting_w_Rmarkdown.html)** |
|*Monday*     | *15:00 - 15:15* | *Break*                       |
| **Monday** | **15:15 - 16:00** | **[Hands-on R Markdown](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/2e7fcea4be42f0e941eabae26ea1ac66116179a4/exercises/Exercise_5_1_1_R_Markdown.html)**      |-->

<!-----
-->
<!--### Day 4: [24-06]
| Day         | Time            | Topic                                |
|-------------|-----------------|--------------------------------------|
| **Tuesday** | **12:00 - 13:30** | **[Excursion Shiny APP](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/4c277723ab55feb53e04ace25fe2036cdeb1d2ae/slides/5_2_Outlook.html)** |
| *Tuesday* | *13:30 - 14:30*  | *Lunch Break*                             |
| **Tuesday** | **14:00 - 14:20** | **[Excursion Applications in R (LLMs)](https://rawcdn.githack.com/nika-akin/data-analysis-with-R/4423f9605080d80fbf33c1154bc770153186a37d/slides/5_3_ApplicationR.html)**            |
|*Tuesday*     |*14:20 - 14:35* | *Break*                       |
| **Tuesday** | **14:35 - 16:00** | **[Group data challenge](https://github.com/rfordatascience/tidytuesday)**      |-->



-->









