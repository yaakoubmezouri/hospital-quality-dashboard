library(tidyverse)
library(DBI)
library(RSQLite)

# Create dataset
hospital_quality <- tibble(
  patient_id = 1:10,
  unit = c("ICU", "ICU", "Med-Surg", "Med-Surg", "Med-Surg",
           "Oncology", "Oncology", "ICU", "ICU", "Oncology"),
  length_of_stay = c(5, 7, 3, 4, 2, 6, 8, 9, 4, 5),
  readmitted_30d = c(1, 0, 0, 1, 0, 1, 0, 0, 1, 0),
  infection_flag = c(0, 0, 1, 0, 0, 1, 0, 0, 1, 0)
)

summary_by_unit <- hospital_quality %>%
  group_by(unit) %>%
  summarise(
    avg_los = mean(length_of_stay),
    readmission_rate = mean(readmitted_30d),
    infection_rate = mean(infection_flag)
  )

# SQL connection
con <- dbConnect(RSQLite::SQLite(), "hospital_quality.db")
dbWriteTable(con, "hospital_quality", hospital_quality, overwrite = TRUE)

sql_summary_by_unit <- dbGetQuery(con, "
  SELECT unit,
         AVG(length_of_stay) AS avg_los,
         AVG(readmitted_30d) AS readmission_rate,
         AVG(infection_flag) AS infection_rate
  FROM hospital_quality
  GROUP BY unit
")

# Plots
ggplot(sql_summary_by_unit, aes(x = unit, y = avg_los, fill = unit)) +
  geom_col() + theme_minimal()

ggplot(sql_summary_by_unit, aes(x = unit, y = readmission_rate, fill = unit)) +
  geom_col() + theme_minimal()

ggplot(sql_summary_by_unit, aes(x = unit, y = infection_rate, fill = unit)) +
  geom_col() + theme_minimal()