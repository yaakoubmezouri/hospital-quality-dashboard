# Hospital Quality Dashboard (SQL + R)

A small health informatics project where I use **R, SQL, and SQLite** to analyze basic hospital quality metrics by unit.

---

## 🎯 Goal

Answer a simple question:

> **Which hospital units have higher length of stay, readmission rates, and infection rates?**

This is a common task in hospital quality, performance improvement, and clinical analytics.

---

## 🧰 Tools Used

- **R** (tidyverse, DBI, RSQLite, ggplot2)
- **SQLite** (local database `hospital_quality.db`)
- **RStudio**

---

## 📂 Project Files

| File | Description |
|------|-------------|
| `hospital_dashboard.R` | Main script. Builds dataset, writes to SQLite, runs SQL queries, and generates plots. |
| `hospital_quality.db` | SQLite database containing the `hospital_quality` table used in this project. |

---

## 🔍 What the Script Does

### 1️⃣ Creates a synthetic dataset with:
- Patient ID  
- Hospital unit (ICU, Med-Surg, Oncology)  
- Length of stay  
- 30-day readmission flag  
- Hospital-acquired infection flag  

### 2️⃣ Saves the data into a **SQLite database**.

### 3️⃣ Runs **SQL queries** to calculate:
- Average length of stay  
- Readmission rate  
- Infection rate  
- Grouped by hospital unit  

### 4️⃣ Generates **three dashboard-style charts** in R:
- Average Length of Stay by Unit  
- Readmission Rate by Unit  
- Infection Rate by Unit  

---

## 📊 Example Metrics Visualized

- **ICU:** higher LOS and readmissions  
- **Med-Surg:** shortest LOS  
- **Oncology:** higher infection rate  

*(All numbers are from a synthetic dataset for learning purposes.)*

---

## ▶️ How to Run the Project

1. Open `hospital_dashboard.R` in **RStudio**.
2. Install required packages:

   ```r
   install.packages(c("tidyverse", "DBI", "RSQLite"))
   ```

3. Run the script using:
   - Click **Source**  
   or  
   - Press **Ctrl + Shift + S** (Windows) / **Cmd + Shift + S** (Mac)

The script will automatically:
- Create the dataset  
- Connect to SQLite  
- Run SQL queries  
- Produce 3 bar charts  

---

## 💡 Skills Demonstrated

- Healthcare quality analytics  
- SQL queries with `GROUP BY`  
- Integrating **R + SQL + SQLite**  
- Using `DBI` and `RSQLite`  
- Data visualization with ggplot2  
- Basic dashboard workflow  

---

## 🚀 Future Improvements

- Add more metrics (LOS distribution, mortality, throughput)
- Add CSV export and R Markdown report
- Create an interactive dashboard with **Shiny** or **Quarto**

---

This is my **first Health Informatics Data Analytics project**, and it reflects the workflow used in real hospital quality departments.  
More projects coming soon!

