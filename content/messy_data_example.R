
# =============================================================================
# TIDY DATA MINI-TASKS: Live Coding Script for Workshop
# Author: vb
# Date: 2026-05-08
# Purpose: Demonstrate tidy data violations and fixes interactively
# =============================================================================

# --- Setup -------------------------------------------------------------------
# Load required packages (install if needed)
if (!require("tidyr")) install.packages("tidyr")
if (!require("dplyr")) install.packages("dplyr")
if (!require("ggplot2")) install.packages("ggplot2")

library(tidyr)
library(dplyr)
library(ggplot2)

cat("\n")
cat("============================================================\n")
cat("  TIDY DATA WORKSHOP: Live Coding Demonstrations\n")
cat("============================================================\n")
cat("\n")


# =============================================================================
# TASK 1
# =============================================================================

messy1 <- data.frame(
  person = c("Anna", "Ben", "Clara"),
  score_2023 = c(85, 90, 78),
  score_2024 = c(88, 92, 80)
)

cat(">>> What's wrong? Why can't we easily plot score over time?\n")



tidy1 <- messy1 |>
  pivot_longer(
    cols = starts_with("score_"),
    names_to = "year",
    values_to = "score"
  ) 


print(tidy1)



# =============================================================================
# TASK 2: 
# =============================================================================



messy2 <- data.frame(
  name = c("Anna", "Ben", "Clara"),
  info = c("F_25", "M_30", "F_28")
)

print(messy2)


cat("How many variables are hiding in 'info'?\n")



tidy2 <- messy2 |>
  separate(info, into = c("gender", "age"), sep = "_") |>
  mutate(age = as.numeric(age))

print(tidy2)



# =============================================================================
# TASK 3: 
# =============================================================================


messy3 <- data.frame(
  respondent = c("R1", "R2", "R3"),
  agree = c(10, 5, 8),
  disagree = c(2, 8, 4),
  neutral = c(3, 2, 5)
)


print(messy3)

cat("\n")
cat(">>>Why can't we make a bar chart directly?\n")


tidy3 <- messy3 |>
  pivot_longer(
    cols = -respondent,
    names_to = "response",
    values_to = "count"
  )

cat("\nTIDY DATA:\n")
print(tidy3)
cat("\n")




# =============================================================================
# TASK 4: The Nightmare Dataset 
# =============================================================================


nightmare <- data.frame(
  id = c("P_001", "P_002", "P_003"),
  q1_pre_post = c("5_7", "3_6", "4_4"),
  notes = c("female, dropout", "male", "female, late")
)


print(nightmare)


cat("\n")
cat(">>> List ALL the problems you see!\n")





step1 <- nightmare |>
  separate(q1_pre_post, into = c("pre", "post"), sep = "_", convert = TRUE)
print(step1)

step2 <- step1 |>
  mutate(
    gender = ifelse(grepl("female", notes), "female", "male"),
    status = case_when(
      grepl("dropout", notes) ~ "dropout",
      grepl("late", notes) ~ "late",
      TRUE ~ "complete"
    )
  ) |>
  select(-notes)
print(step2)


clean <- step2 |>
  pivot_longer(
    cols = c(pre, post),
    names_to = "timepoint",
    values_to = "score"
  ) |>
  mutate(
    timepoint = ifelse(timepoint == "pre", "pre-test", "post-test")
  )

print(clean)



