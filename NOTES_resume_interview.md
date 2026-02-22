# Yaakoub Mezouri — Resume Bullets & Interview Notes
## Hospital Quality Dashboard | Health Informatics Portfolio Project

> **Personal use only — interview prep & resume building for Health Informatics / Clinical Analytics roles**
> Texas State University MHI (Data Analytics) | Anticipated August 2027
> Contact: 216-396-8692 | yakoub.mezouri@gmail.com | Westlake, Ohio 44145

---

## 📌 WHERE TO ADD THIS ON YOUR RESUME

Add a **"Projects"** section to your resume, placed **after Education and before or after Technology Skills**.
Title it: `Projects / Portfolio` or `Health Informatics Projects`

---

## 💼 Resume Bullets — Hospital Quality Dashboard

### Option A — Concise (best for 1-page tight format)

- Built a **hospital quality analytics dashboard** using R, SQL, and SQLite to measure length of stay, 30-day readmission rates, and hospital-acquired infection rates across ICU, Med-Surg, and Oncology units
- Wrote SQL `GROUP BY` / `AVG` queries executed via R (`DBI`, `RSQLite`) against a structured relational database; visualized results with `ggplot2` bar charts
- Applied analytical methods directly relevant to **hospital quality, performance improvement, and clinical informatics** — leveraging 17 years of healthcare operations experience

---

### Option B — Detailed / Impact-focused (best for job applications)

- Designed and built an **end-to-end Health Informatics analytics pipeline** in R and SQL: created a structured patient dataset, stored it in SQLite, queried it with SQL aggregate functions, and visualized unit-level KPIs with ggplot2 — mirroring workflows used in real hospital quality departments
- Identified the **ICU as the highest-readmission unit (50%)** and **Oncology as the longest-LOS unit (6.33 avg days)** — insights directly applicable to post-discharge follow-up programs, case management, and cost reduction initiatives
- Combined **17 years of direct hospital operations leadership** (General Manager, Clinique El Ihssaniette, Algeria) with emerging data analytics skills to bridge clinical knowledge and informatics practice
- Demonstrated proficiency in the **full health data pipeline**: data modeling → relational database storage → SQL analysis → ggplot2 visualization — aligned with roles in clinical analytics, population health, and quality reporting

---

### Option C — ATS / Skills keyword version (for applicant tracking systems)

- **Tools:** R, SQL, SQLite, ggplot2, tidyverse, DBI, RSQLite, RStudio
- **Domain:** Health informatics, hospital quality metrics, clinical analytics, performance improvement, CMS reporting
- **Techniques:** SQL aggregation, relational database design, data wrangling, dashboard-style visualization
- **Clinical context:** LOS optimization, 30-day readmission tracking, HAI monitoring, unit benchmarking, executive KPI reporting

---

## 🎤 Interview Stories (STAR Format)

---

### STAR Story #1 — For: *"Tell me about a data project you worked on"*

**S — Situation:**
I spent 17 years as a General Manager of a private hospital in Algeria — Clinique El Ihssaniette — where I oversaw departments like radiology, ICU, oncology, maternity, and surgical units. I made decisions every day about staffing, capacity, and resource allocation. But I was making those decisions based on experience and intuition, not structured data. Now that I’m pursuing my Master of Health Informatics at Texas State University with a concentration in Data Analytics, I wanted to build something that showed what it would look like if those operational decisions were backed by real data.

**T — Task:**
I built a hospital quality analytics dashboard project using R and SQL to analyze the three metrics that matter most to any hospital quality team: length of stay, 30-day readmission rates, and hospital-acquired infection rates — broken down by unit.

**A — Action:**
I created a structured patient dataset in R using `tibble`, stored it in a SQLite relational database using `DBI` and `RSQLite`, then wrote SQL `GROUP BY` queries to calculate average KPIs per unit. I used `ggplot2` to produce three bar charts — one per metric — in a clean dashboard format. The entire pipeline runs in a single R script.

**R — Result:**
The analysis showed the ICU had the highest readmission rate (50%), Oncology had the longest average stay (6.33 days), and Med-Surg was the best-performing unit. From my time running a hospital, I know exactly what those numbers trigger: the ICU result means you need a post-discharge follow-up protocol; the Oncology result signals a case management review. I published it on GitHub to demonstrate that I can connect data tools to clinical decisions.

---

### STAR Story #2 — For: *"How does your healthcare background apply to health informatics?"*

**S — Situation:**
From 2007 to 2023, I ran a full-service private hospital in Algeria. I personally built departments from scratch — I established the ophthalmology, radiology, ORL/ENT, maternity, forensic medicine, and anatomical pathology units. I recruited the medical teams, procured the equipment, and managed regulatory compliance for all of them.

**T — Task:**
What I learned is that the hardest part of hospital management is not the operations — it’s the information gap. You’re making million-dollar decisions about staffing and capacity without clean data. When I started my MHI program at Texas State, I made it my mission to close that gap.

**A — Action:**
I’ve been building technical skills in SQL, R, and database management that directly apply to the problems I lived through as a hospital administrator. My dashboard project is a direct translation: I took the same quality metrics I tracked manually as a GM — LOS, readmissions, infection rates — and built an automated SQL + R pipeline to surface them by unit.

**R — Result:**
The combination is rare: most health informatics analysts understand the tools but not the clinical operations. I understand both. I’ve sat in the room where department heads argue about bed capacity and resource allocation — and I now have the analytical tools to resolve those arguments with data.

---

### STAR Story #3 — For: *"Why are you transitioning into health informatics?"*

**S — Situation:**
After 17 years leading hospital operations at Clinique El Ihssaniette in Algeria — growing it from a small facility to a multi-department hospital with radiology, ICU, oncology, maternity, urology, and forensic medicine — I relocated to the United States.

**T — Task:**
I needed to find the role that best leveraged my deep clinical operations experience in a U.S. healthcare market that increasingly runs on data, EHR systems, and analytics.

**A — Action:**
I enrolled in the Master of Health Informatics program at Texas State University, concentrating in Data Analytics. I’m building skills in SQL, R, database management, and health data systems. Alongside my coursework, I’m building a portfolio of real analytics projects — starting with this hospital quality dashboard — that demonstrate I can do the work, not just describe it.

**R — Result:**
Health informatics is the exact intersection of everything I already know — clinical operations, compliance, department management, staff leadership — and everything I’m building — SQL, R, data pipelines, EHR analytics. My goal is a role in clinical analytics, hospital quality, or health data management where that combination creates real value.

---

## ⏱️ Elevator Pitches

### 60-Second Version (for interviews and networking events)

> “I’m Yaakoub Mezouri. I spent 17 years as a General Manager of a private hospital in Algeria, where I built and ran departments including ICU, radiology, oncology, maternity, and surgical services from the ground up. I relocated to the U.S. and I’m now completing my Master of Health Informatics with a Data Analytics concentration at Texas State University.
>
> To bridge my clinical operations background with analytics, I built a hospital quality dashboard using R and SQL — analyzing length of stay, readmission rates, and infection rates by unit, stored in a SQLite database and visualized with ggplot2. It’s on my GitHub.
>
> I’m looking for a role in clinical analytics, health data management, or hospital quality where 17 years of operational experience combined with modern data skills creates real value.”

---

### 30-Second Version (for quick introductions)

> “I have 17 years running hospital operations in Algeria — building departments, managing clinical teams, overseeing compliance. Now I’m completing my MHI in Data Analytics at Texas State and building technical skills in SQL and R. My first portfolio project is a hospital quality dashboard that analyzes LOS, readmissions, and infection rates by unit using SQL and ggplot2. I’m transitioning into clinical analytics or health informatics roles where I can bring both the operational and data side.”

---

## 🎯 Keywords to Use in Interviews

**Clinical / Domain:**
- Hospital quality metrics (LOS, 30-day readmission, HAI rates)
- Clinical operations management
- Multi-departmental hospital administration
- Performance improvement and quality reporting
- CMS quality reporting / Joint Commission readiness
- Case management and discharge planning
- Population health analytics
- Patient access and capacity planning

**Technical:**
- SQL aggregate queries (AVG, GROUP BY, ORDER BY)
- R programming (tidyverse, ggplot2, DBI, RSQLite)
- Relational database design and management (SQLite)
- Data pipeline development
- Dashboard-style data visualization
- EHR/EMR systems (local Algeria platforms)
- Google Workspace, Microsoft Office, Trello, Monday.com
- AI tools (ChatGPT, Microsoft Copilot, Gemini)

**Leadership / Soft Skills:**
- 17 years executive healthcare leadership
- Multidisciplinary team building and recruitment
- Regulatory compliance (Algerian national health standards)
- Strategic planning and infrastructure development
- Cross-functional stakeholder communication
- Bilingual: Arabic (fluent), French (advanced), English

---

## 💡 Interview Tips — Specific to Yaakoub’s Background

1. **Lead with the 17 years, not the degree.** Recruiters are used to new MHI graduates with no clinical experience. You’re the opposite — use it. Open with: *"I spent 17 years running a hospital before starting my analytics degree."*

2. **Show your GitHub during the interview.** Pull up `github.com/yaakoubmezouri` and walk them through the README. Seeing a real working project changes the conversation.

3. **Translate Algeria experience to U.S. context.** When they ask about your background, say: *"The department structure and quality challenges are the same worldwide — LOS, readmissions, infection control, staffing ratios. The data tools are the same. The language of hospital quality is universal."*

4. **Connect every technical answer to a clinical insight.** Don’t just say *"I used GROUP BY."* Say: *"I used GROUP BY to surface which unit had the highest readmission rate — and from running a hospital, I knew immediately that meant a gap in post-discharge follow-up."*

5. **Use your multilingual background as a strength.** In U.S. healthcare, Arabic and French-speaking providers and patients are underserved. Say: *"I’m fluent in Arabic and advanced in French, which is valuable in clinical settings with diverse patient populations."*

6. **Address the transition directly.** If asked why you changed careers or relocated, be direct and confident: *"I built a hospital. Now I want to build the data systems that make hospitals better. Health informatics is the natural next chapter."*

7. **Mention scalability of your project.** End your project story with: *"This was a portfolio project with synthetic data, but the SQL pipeline and R workflow are exactly what runs on real EHR exports and CMS datasets. I’m actively working toward connecting this to Hospital Compare data next."*

---

## 📋 Targeted Job Titles to Apply For

| Job Title | Why It Fits |
|---|---|
| Clinical Data Analyst | SQL + R skills + clinical operations background |
| Health Informatics Analyst | Direct match to MHI degree + portfolio |
| Quality Improvement Analyst | 17 years of QI experience + dashboard project |
| Healthcare Operations Analyst | Directly mirrors GM role with analytics layer |
| Population Health Analyst | SQL + readmission/infection analytics skills |
| EHR Implementation Specialist | Hospital ops experience + tech skills |
| Clinical Quality Coordinator | Strong bridge role for transition |
| Health Data Coordinator | Entry-level analytics + clinical ops combo |

---

## 📝 Professional Summary (Updated Version for Resume)

> Healthcare executive with 17 years of hospital operations leadership and emerging expertise in health informatics data analytics. Built and managed multi-departmental hospital services including ICU, oncology, radiology, and surgical units. Currently completing a Master of Health Informatics (Data Analytics) at Texas State University. Proficient in SQL, R, SQLite, and ggplot2; applying these tools to clinical quality metrics including length of stay, readmission rates, and infection control. Seeking to combine deep clinical operations knowledge with modern data skills in a health informatics or clinical analytics role.

---

*Private notes — Yaakoub Mezouri | Updated February 2026 | yakoub.mezouri@gmail.com*
