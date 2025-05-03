# 👥 HR Workforce Dashboard

📊 An interactive Power BI dashboard analyzing HR workforce metrics such as employee distribution, salary trends, and hiring patterns — powered by **SQL**, **Python**, and **Power BI**.

---

## 🔍 Overview

This project visualizes and evaluates workforce data to uncover key organizational insights:
- Employee distribution by department, job title, and location
- Salary disparities across departments
- Hiring trends and service length
- Financial projections for salary costs

---

## ❓ Business Problem

> How can the company manage salary risk and preserve knowledge with an aging workforce?

---

## 💡 Key Features

- 📈 **Total Employees**: 107  
- 💵 **Average Salary**: $6.46K  
- 🌍 **Employee Locations**: 4 Countries  
- 🧑‍💼 **Roles Analyzed**: 27 Departments, 13 Job Titles  
- 🕰️ **Service Trends**: Most employees have 17+ years of service  
- 💸 **Financial Forecast**: Salary costs projected to rise 20% by 2028  

---

## 🧠 Insights

- 100% of employees have over 17 years of service  
- Salary costs will rise significantly without junior hires  
- No current hiring pipeline for younger employees  

---

## 📎 Solution

> Begin junior hiring immediately  
> Target 30% workforce renewal over 3 years  
> Balance senior/junior roles to optimize salary expense

---

## 📥 Click to View Dashboard Slides (PDF)

[![Dashboard Preview](hr_thumbnail.png)](HR_VIS.pdf)

---

## 🛠️ Tools Used

- 💾 Oracle SQL Developer (Data Extraction & Analysis)  
- 🐍 Python (Data Cleaning & Preprocessing)  
- 📊 Power BI (Interactive Visuals)

---

## 📂 Project Files

- `HR_VIS.pbix` – Main dashboard file  
- `HR_VIS.pdf` – Slide presentation  
- `.csv` files – Cleaned dataset tables  
- `HR_PANDAS.ipynb` – Python preprocessing  
- `HR_vis.sql` – SQL queries used for metrics

---

## 🧾 Sample SQL Query

```sql
-- Total Employees by Department
SELECT department_name, COUNT(*) AS total_employees
FROM employees
GROUP BY department_name
ORDER BY total_employees DESC;
