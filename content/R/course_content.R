# Day 1: 07-11
course_day1 <- tibble::tribble(
  ~Day, ~Time, ~Topic,
  "Friday", "09:00 - 10:00", "Onboarding & Getting Started with R",
  "Friday", "10:00 - 10:10", "Break",
  "Friday", "10:10 - 12:00", "Data Types & Loading",
  "Friday", "12:00 - 13:00", "Lunch Break",
  "Friday", "13:00 - 14:45", "Data Wrangling",
  "Friday", "14:45 - 15:00", "Break",
  "Friday", "15:00 - 16:00", "Data Workflows & Github",
  "Friday", "16:00 - 16:10", "Break",
  "Friday", "16:10 - 17:00", "Tidy Tuesday -- Group Work",
) %>%
  knitr::kable(escape = FALSE) %>%
  kableExtra::kable_styling() %>%
  kableExtra::column_spec(1, color = "darkgreen") %>%
  kableExtra::column_spec(2, color = "darkgreen") %>%
  kableExtra::column_spec(3, bold = TRUE) %>%
  kableExtra::row_spec(c(2, 4, 6, 8), color = "gray")

# Day 2: 21-11
course_day2 <- tibble::tribble(
  ~Day, ~Time, ~Topic,
  "Friday", "09:00 - 10:45", "Data Wrangling & Exploratory Analyses",
  "Friday", "10:45 - 11:00", "Break",
  "Friday", "11:00 - 12:00", "Data Visualization",
  "Friday", "12:00 - 13:00", "Lunch Break",
  "Friday", "13:00 - 14:45", "Reproducible Reporting with R Markdown",
  "Friday", "14:45 - 15:00", "Break",
  "Friday", "15:00 - 16:00", "Group exploration",
  "Friday", "16:00 - 16:15", "Break",
  "Friday", "16:15 - 17:00", "Group pitches and Wrap-up",
) %>%
  knitr::kable() %>%
  kableExtra::kable_styling() %>%
  kableExtra::column_spec(1, color = "darkgreen") %>%
  kableExtra::column_spec(2, color = "darkgreen") %>%
  kableExtra::column_spec(3, bold = TRUE) %>%
  kableExtra::row_spec(c(2, 4, 6), color = "gray")

# Day 3: 23-06
#course_day3 <- tibble::tribble(
#  ~Day, ~Time, ~Topic,
#  "Monday", "12:00 - 13:00", "Recap",
#  "Monday", "13:00 - 13:15", "Break",
#  "Monday", "13:15 - 14:00", "Confirmatory Analyses",
#  "Monday", "14:00 - 15:00", "Lunch Break",
#  "Monday", "15:00 - 16:00", "Reproducible Reporting with R Markdown",
#  "Monday", "16:00 - 16:15", "Break",
#  "Monday", "16:15 - 17:00", "R Markdown revisited"
#) %>%
#  knitr::kable() %>%
#  kableExtra::kable_styling() %>%
#  kableExtra::column_spec(1, color = "darkgreen") %>%
#  kableExtra::column_spec(2, color = "darkgreen") %>%
#  kableExtra::column_spec(3, bold = TRUE) %>%
#  kableExtra::row_spec(c(2, 4, 6), color = "gray")

# Day 4: 24-06
#course_day4 <- tibble::tribble(
#  ~Day, ~Time, ~Topic,
#  "Tuesday", "12:00 - 13:00", "Run LLMs locally",
#  "Tuesday", "13:00 - 13:15", "Break",
#  "Tuesday", "13:15 - 14:00", "LLMs in RStudio",
#  "Tuesday", "14:00 - 15:00", "Lunch Break",
#  "Tuesday", "15:00 - 16:00", "Group data exploration",
##  "Tuesday", "16:00 - 16:15", "Break",
#  "Tuesday", "16:15 - 17:00", "Group data exploration"
#) %>%
#  knitr::kable() %>%
#  kableExtra::kable_styling() %>%
#  kableExtra::column_spec(1, color = "darkgreen") %>%
#  kableExtra::column_spec(2, color = "darkgreen") %>%
#  kableExtra::column_spec(3, bold = TRUE) %>%
#  kableExtra::row_spec(c(2, 4, 6), color = "gray")

# Day 5: 25-06
#course_day5 <- tibble::tribble(
#  ~Day, ~Time, ~Topic,
 # "Wednesday", "12:00 - 13:00", "Group data challenge",
#  "Wednesday", "13:00 - 13:15", "Break",
#  "Wednesday", "13:15 - 14:00", "Group data challenge",
#  "Wednesday", "14:00 - 15:00", "Lunch Break",
#  "Wednesday", "15:00 - 16:00", "Group presentations",
#  "Wednesday", "16:00 - 16:15", "Break",
#  "Wednesday", "16:15 - 17:00", "Wrap-up"
#) %>%
#  knitr::kable() %>%
#  kableExtra::kable_styling() %>%
#  kableExtra::column_spec(1, color = "darkgreen") %>%
 # kableExtra::column_spec(2, color = "darkgreen") %>%
#  kableExtra::column_spec(3, bold = TRUE) %>%
#  kableExtra::row_spec(c(2, 4, 6), color = "gray")
