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

---

## 🗄️ SQL Example

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

---

## 🖼️ Sample Output (Actual Charts)

The following charts are generated using the SQL analysis pipeline described above.

### 1. Average Length of Stay by Hospital Unit
![Avg LOS by Unit](https://quickchart.io/chart?c=%7B%22type%22%3A%22bar%22%2C%22data%22%3A%7B%22labels%22%3A%5B%22ICU%22%2C%22Med-Surg%22%2C%22Oncology%22%5D%2C%22datasets%22%3A%5B%7B%22label%22%3A%22Avg+Length+of+Stay+(days)%22%2C%22data%22%3A%5B6.25%2C3.0%2C6.33%5D%2C%22backgroundColor%22%3A%5B%22%234e79a7%22%2C%22%2359a14f%22%2C%22%23f28e2b%22%5D%7D%5D%7D%2C%22options%22%3A%7B%22plugins%22%3A%7B%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%22Average+Length+of+Stay+by+Hospital+Unit%22%2C%22font%22%3A%7B%22size%22%3A18%7D%7D%2C%22legend%22%3A%7B%22display%22%3Afalse%7D%7D%2C%22scales%22%3A%7B%22y%22%3A%7B%22beginAtZero%22%3Atrue%2C%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%22Avg+Days%22%7D%7D%2C%22x%22%3A%7B%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%22Hospital+Unit%22%7D%7D%7D%7D%7D&width=600&height=400&backgroundColor=white)

### 2. 30-Day Readmission Rate by Hospital Unit
![Readmission Rate by Unit](https://quickchart.io/chart?c=%7B%22type%22%3A%22bar%22%2C%22data%22%3A%7B%22labels%22%3A%5B%22ICU%22%2C%22Med-Surg%22%2C%22Oncology%22%5D%2C%22datasets%22%3A%5B%7B%22label%22%3A%22Readmission+Rate%22%2C%22data%22%3A%5B0.5%2C0.33%2C0.33%5D%2C%22backgroundColor%22%3A%5B%22%23e15759%22%2C%22%2359a14f%22%2C%22%23f28e2b%22%5D%7D%5D%7D%2C%22options%22%3A%7B%22plugins%22%3A%7B%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%2230-Day+Readmission+Rate+by+Hospital+Unit%22%2C%22font%22%3A%7B%22size%22%3A18%7D%7D%2C%22legend%22%3A%7B%22display%22%3Afalse%7D%7D%2C%22scales%22%3A%7B%22y%22%3A%7B%22beginAtZero%22%3Atrue%2C%22ticks%22%3A%7B%22format%22%3A%7B%22style%22%3A%22percent%22%7D%7D%2C%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%22Readmission+Rate%22%7D%7D%2C%22x%22%3A%7B%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%22Hospital+Unit%22%7D%7D%7D%7D%7D&width=600&height=400&backgroundColor=white)

### 3. Hospital-Acquired Infection Rate by Unit
![Infection Rate by Unit](https://quickchart.io/chart?c=%7B%22type%22%3A%22bar%22%2C%22data%22%3A%7B%22labels%22%3A%5B%22ICU%22%2C%22Med-Surg%22%2C%22Oncology%22%5D%2C%22datasets%22%3A%5B%7B%22label%22%3A%22Infection+Rate%22%2C%22data%22%3A%5B0.25%2C0.33%2C0.33%5D%2C%22backgroundColor%22%3A%5B%22%2376b7b2%22%2C%22%2359a14f%22%2C%22%23f28e2b%22%5D%7D%5D%7D%2C%22options%22%3A%7B%22plugins%22%3A%7B%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%22Hospital-Acquired+Infection+Rate+by+Unit%22%2C%22font%22%3A%7B%22size%22%3A18%7D%7D%2C%22legend%22%3A%7B%22display%22%3Afalse%7D%7D%2C%22scales%22%3A%7B%22y%22%3A%7B%22beginAtZero%22%3Atrue%2C%22ticks%22%3A%7B%22format%22%3A%7B%22style%22%3A%22percent%22%7D%7D%2C%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%22Infection+Rate%22%7D%7D%2C%22x%22%3A%7B%22title%22%3A%7B%22display%22%3Atrue%2C%22text%22%3A%22Hospital+Unit%22%7D%7D%7D%7D%7D&width=600&height=400&backgroundColor=white)

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
