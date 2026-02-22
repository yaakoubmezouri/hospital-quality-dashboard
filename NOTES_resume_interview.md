# Resume Bullets & Interview Story
## Hospital Quality Dashboard — Health Informatics Portfolio Project

---

## 💼 Resume Bullets

Copy and paste these directly into your resume under a **Projects** or **Technical Experience** section:

---

### Option A — Concise (1-line each, best for tight resumes)

- Built an end-to-end **hospital quality analytics dashboard** using R, SQL, and SQLite to analyze LOS, readmission rates, and HAI rates across ICUs, Med-Surg, and Oncology units
- Wrote **SQL aggregate queries** (`AVG`, `GROUP BY`) executed via R's `DBI`/`RSQLite` interface against a local relational database
- Designed **3 ggplot2 bar chart visualizations** surfacing unit-level KPI disparities for quality improvement decision-making
- Demonstrated health informatics workflow applicable to **CMS quality reporting, Joint Commission prep, and executive dashboards**

---

### Option B — Detailed (stronger for job applications, adds impact)

- Developed a **Health Informatics Data Analytics Dashboard** in R and SQL, querying a SQLite database to calculate average length of stay, 30-day readmission rates, and hospital-acquired infection rates by hospital unit
- Identified the **ICU as highest-risk unit** (50% readmission rate) and **Oncology as highest LOS** (6.33 avg days), insights directly applicable to quality improvement and case management interventions
- Connected R to a relational database using `DBI` and `RSQLite`, running parameterized SQL queries and rendering results as publication-ready `ggplot2` visualizations
- Demonstrated proficiency in the **full health data pipeline**: data creation → database storage → SQL analysis → visualization — mirroring workflows used in hospital quality and clinical informatics departments

---

### Option C — Skills-focused (ideal for ATS keyword optimization)

- **Tools:** R, SQL, SQLite, ggplot2, tidyverse, DBI, RSQLite, RStudio
- **Domain:** Health informatics, hospital quality metrics, clinical analytics, performance improvement
- **Techniques:** SQL aggregation, relational database integration, data wrangling, dashboard visualization
- **Application:** LOS analysis, 30-day readmission tracking, HAI monitoring, unit benchmarking

---

## 🎤 Interview Story (STAR Format)

Use this when asked:
> *"Tell me about a data project you worked on"*
> *"How have you applied SQL or analytics to a real problem?"*
> *"What experience do you have with health data?"*

---

### STAR Story — Hospital Quality Dashboard

**S — Situation:**
As I was building my health informatics portfolio, I wanted to demonstrate that I could do more than just analyze data — I wanted to show that I understood the *clinical context* behind the numbers. Hospital quality departments deal with metrics like length of stay, readmission rates, and infection rates every single day, and I wanted to build something that reflected that real-world workflow.

**T — Task:**
I set out to build an end-to-end analytics project that would: create a structured patient dataset, store it in a relational database using SQLite, run SQL queries to aggregate key quality metrics by hospital unit, and visualize the results in a dashboard-style format — all using R.

**A — Action:**
I built the project in three layers. First, I created a synthetic dataset in R using `tibble` with fields for patient ID, hospital unit, length of stay, 30-day readmission flag, and infection flag. Second, I connected R to a SQLite database using `DBI` and `RSQLite`, wrote the data to a table, then ran SQL `GROUP BY` queries to calculate average metrics per unit. Third, I used `ggplot2` to produce three bar charts — one for each KPI — formatted in a clean dashboard style.

**R — Result:**
The analysis surfaced that the ICU had the highest readmission rate at 50%, Oncology had the longest average length of stay at 6.33 days, and Med-Surg was the best-performing unit across all three metrics. These are exactly the kinds of findings a hospital quality team would act on — targeting ICU patients for post-discharge follow-up programs, or investigating Oncology for discharge efficiency improvements.

The project is published on my GitHub and demonstrates that I can connect analytical tools to clinical questions — which is the core skill in health informatics and clinical analytics roles.

---

### Short Version (30-second elevator pitch)

> "I built a hospital quality analytics dashboard using R and SQL. I created a SQLite database, wrote SQL queries to calculate length of stay, readmission rates, and infection rates by unit, and visualized the results with ggplot2. The analysis identified the ICU as having the highest readmission rate — 50% — which in a real setting would trigger a targeted post-discharge follow-up program. It mirrors the exact workflow used in hospital quality and clinical informatics roles."

---

## 🎯 Keywords to Emphasize in Interviews

- Health informatics analytics pipeline
- SQL aggregate queries and GROUP BY logic
- R + SQLite integration (DBI, RSQLite)
- Hospital KPIs: LOS, 30-day readmission, HAI rates
- ggplot2 data visualization
- CMS quality reporting and Joint Commission readiness
- Clinical quality improvement (QI) workflow
- Unit-level benchmarking and outlier identification
- Population health analytics
- Data-driven decision-making for clinical leadership

---

## 💡 Tips for the Interview

1. **Pull up your GitHub during the interview** — show the README and the code. Recruiters love seeing a real project.
2. **Lead with the clinical insight**, not the code: say "I found the ICU had a 50% readmission rate" before you say "I used SQL GROUP BY."
3. **Connect it to the job**: If they work in quality improvement, say "this mirrors the dashboards your quality team runs weekly."
4. **Mention scalability**: "This was built with synthetic data, but the SQL query and ggplot2 pipeline works the same way on real EHR exports or CMS datasets."
5. **Show curiosity**: End with "My next step is connecting this to a real CMS Hospital Compare dataset" — it shows drive.

---

*These notes are for personal use — interview prep and resume building for Health Informatics / Clinical Analytics roles.*
