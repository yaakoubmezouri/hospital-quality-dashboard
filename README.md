# Hospital Quality Dashboard (SQL + R)

> **Analyzing hospital unit performance using SQL, R, and SQLite — built for health informatics portfolios and real-world clinical analytics workflows.**

[![Language](https://img.shields.io/badge/Language-R-blue)](https://www.r-project.org/) [![Database](https://img.shields.io/badge/Database-SQLite-lightgrey)](https://www.sqlite.org/) [![Status](https://img.shields.io/badge/Status-Active-brightgreen)]()

---

## 📌 Project Introduction

This project demonstrates a **end-to-end health informatics analytics pipeline** — from raw patient data to SQL-powered queries to publication-ready visualizations. It mirrors the workflow used daily in hospital quality departments, population health teams, and clinical informatics roles.

Using a synthetic dataset of 10 patient records across three hospital units (ICU, Med-Surg, Oncology), the project answers a core quality question:

> **Which hospital units have higher length of stay, readmission rates, and infection rates?**

Built with: **R · SQLite · SQL · ggplot2 · tidyverse · DBI · RSQLite**

---

## 🏥 Use Cases in a Hospital

| Use Case | How This Project Applies |
|---|---|
| **Quality Improvement (QI)** | Identifies which units have elevated LOS or readmission rates for targeted interventions |
| **Infection Prevention** | Flags units with above-average hospital-acquired infection (HAI) rates |
| **Case Management** | Supports discharge planning by surfacing units with longest average stays |
| **Executive Dashboards** | Provides unit-level KPIs for CMO/CNO reporting |
| **Population Health Analytics** | Tracks readmission trends to reduce CMS penalty risk |
| **Accreditation Prep (Joint Commission)** | Demonstrates data-driven monitoring of core quality metrics |

---

## 📊 Key Results (Example Output)

Based on the synthetic dataset:

| Unit | Avg Length of Stay | Readmission Rate | Infection Rate |
|---|---|---|---|
| **ICU** | 6.25 days | 50% | 25% |
| **Med-Surg** | 3.0 days | 33% | 33% |
| **Oncology** | 6.33 days | 33% | 33% |

**Key findings:**
- The **ICU** has the highest readmission rate (50%) — a target for post-discharge follow-up programs
- **Oncology** has the longest average length of stay (6.33 days) — driving cost and capacity concerns
- **Med-Surg** performs best across all three metrics — potential benchmark unit

> Note: All data is synthetic and generated for learning/portfolio purposes only.

---

## 🧰 Tech Stack

| Tool | Purpose |
|---|---|
| **R** | Data creation, analysis, visualization |
| **SQLite** | Local relational database storage |
| **SQL** | Aggregation queries (`AVG`, `GROUP BY`) |
| **tidyverse** | Data wrangling (`dplyr`, `tibble`, `%>%`) |
| **ggplot2** | Bar chart visualizations |
| **DBI / RSQLite** | R-to-database connection layer |
| **RStudio** | Development environment |

---

## ▶️ How to Run

### Prerequisites

- R (version 4.0+) and RStudio installed
- Install required packages (run once):

```r
install.packages(c("tidyverse", "DBI", "RSQLite"))
```

### Steps

1. Clone or download this repository:
 ```bash
 git clone https://github.com/yaakoubmezouri/hospital-quality-dashboard.git
 ```
2. Open `hospital_dashboard.R` in **RStudio**
3. Run the full script:
 - Click **Source** in RStudio, OR
 - Press `Cmd + Shift + S` (Mac) / `Ctrl + Shift + S` (Windows)

### What happens automatically:
- Synthetic dataset is created in memory
- Data is written to `hospital_quality.db` (SQLite)
- SQL queries run and return aggregated results
- 3 bar charts are generated and displayed

---

## 🗄️ SQL Example

This query runs inside R via `DBI::dbGetQuery()` and aggregates the key quality metrics by unit:

```sql
SELECT
  unit,
  AVG(length_of_stay)   AS avg_los,
  AVG(readmitted_30d)   AS readmission_rate,
  AVG(infection_flag)   AS infection_rate
FROM hospital_quality
GROUP BY unit
ORDER BY avg_los DESC;
```

**Why this matters:** In a real hospital setting, this query pattern is used to feed executive scorecards, flag outlier units, and support CMS quality reporting.

---

## 📈 R Code Example

### Connect R to SQLite and run SQL:

```r
library(DBI)
library(RSQLite)

# Connect to local SQLite database
con <- dbConnect(RSQLite::SQLite(), "hospital_quality.db")

# Run SQL query from R
sql_summary <- dbGetQuery(con, "
  SELECT unit,
    AVG(length_of_stay)  AS avg_los,
    AVG(readmitted_30d)  AS readmission_rate,
    AVG(infection_flag)  AS infection_rate
  FROM hospital_quality
  GROUP BY unit
")

print(sql_summary)
dbDisconnect(con)
```

### Visualize with ggplot2:

```r
library(ggplot2)

# Average Length of Stay by Unit
ggplot(sql_summary, aes(x = unit, y = avg_los, fill = unit)) +
  geom_col(show.legend = FALSE) +
  labs(
    title = "Average Length of Stay by Hospital Unit",
    x = "Unit",
    y = "Avg Days"
  ) +
  theme_minimal(base_size = 14)

# Readmission Rate by Unit
ggplot(sql_summary, aes(x = unit, y = readmission_rate, fill = unit)) +
  geom_col(show.legend = FALSE) +
  scale_y_continuous(labels = scales::percent) +
  labs(
    title = "30-Day Readmission Rate by Hospital Unit",
    x = "Unit",
    y = "Readmission Rate"
  ) +
  theme_minimal(base_size = 14)

# Infection Rate by Unit
ggplot(sql_summary, aes(x = unit, y = infection_rate, fill = unit)) +
  geom_col(show.legend = FALSE) +
  scale_y_continuous(labels = scales::percent) +
  labs(
    title = "Hospital-Acquired Infection Rate by Unit",
    x = "Unit",
    y = "Infection Rate"
  ) +
  theme_minimal(base_size = 14)
```

---

## 🖼️ Sample Output

> Charts are generated when you run `hospital_dashboard.R` in RStudio.

### Plot 1 — Average Length of Stay by Unit
```
Unit        | Avg LOS
------------|--------
Oncology    | 6.33 days  ████████████████
ICU         | 6.25 days  ███████████████
Med-Surg    | 3.00 days  ████████
```

### Plot 2 — 30-Day Readmission Rate by Unit
```
Unit        | Readmission Rate
------------|----------------
ICU         | 50%  ████████████████████
Oncology    | 33%  █████████████
Med-Surg    | 33%  █████████████
```

### Plot 3 — Hospital-Acquired Infection Rate by Unit
```
Unit        | Infection Rate
------------|---------------
Med-Surg    | 33%  █████████████
Oncology    | 33%  █████████████
ICU         | 25%  ██████████
```

> To add real screenshots: run the script, export plots with `ggsave()`, upload to a `/plots` folder in this repo, and update the paths above with `![Plot Title](plots/filename.png)`.

---

## 📂 Project Files

| File | Description |
|---|---|
| `hospital_dashboard.R` | Main R script — builds dataset, loads SQLite, runs SQL, generates 3 charts |
| `hospital_quality.db` | SQLite database containing the `hospital_quality` table |
| `README.md` | Project documentation (this file) |

---

## 💡 Skills Demonstrated

- Writing and executing **SQL aggregate queries** (`AVG`, `GROUP BY`, `ORDER BY`)
- Integrating **R with a relational database** using `DBI` and `RSQLite`
- **Data wrangling** with `dplyr` and `tibble`
- **Dashboard-style visualization** with `ggplot2`
- Applying a **health informatics analytics workflow** to clinical quality metrics
- Understanding of **hospital KPIs**: LOS, readmission rates, HAI rates

---

## 🚀 Future Improvements

- [ ] Add LOS distribution histograms and box plots by unit
- [ ] Export results to CSV for Excel/Tableau compatibility
- [ ] Build an R Markdown / Quarto report with narrative
- [ ] Create an interactive **Shiny** dashboard
- [ ] Expand dataset with mortality, throughput, and HCAHPS scores
- [ ] Connect to a real CMS public dataset (e.g., Hospital Compare)

---

## 👤 About

This is my **first Health Informatics Data Analytics portfolio project**, built to demonstrate the SQL + R + SQLite workflow used in real hospital quality, performance improvement, and clinical analytics departments.

More projects coming soon. Feedback welcome!

---

*Built with R · SQLite · SQL · ggplot2 | Health Informatics Portfolio Project*
