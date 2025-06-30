# 📊 Data Analyst Job Market Exploration

## 🔍 Introduction
Dive into the data job market! This project focuses on **Data Analyst** roles, exploring:
- 💰 Top-paying jobs  
- 🔥 In-demand skills  
- 📈 Where high demand meets high salary in data analytics  

Explore all SQL queries in the [`project_sql`](./project_sql) folder.

---

## 🧠 Background
This project was driven by a desire to understand the data analyst job market more effectively—pinpointing:
- Which jobs pay the most  
- Which skills are in highest demand  
- How to streamline job searching by learning the most valuable skills  

📦 **Dataset**: Provided through a SQL course, containing job titles, salaries, locations, and associated skills.

---

## ❓ Key Questions
This analysis answers:
1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. What skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

---

## 🧰 Tools Used
- **SQL**: Core query language used for analysis  
- **PostgreSQL**: RDBMS to manage and query the job postings data  
- **Visual Studio Code**: Query execution and script writing  
- **Git & GitHub**: Version control and sharing of SQL scripts

---

## 📊 The Analysis

### 1. 💸 Top Paying Data Analyst Jobs
**Query**:
```sql
SELECT	
	job_id, job_title, job_location, job_schedule_type, salary_year_avg,
	job_posted_date, name AS company_name
FROM job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst'
  AND job_location = 'Anywhere'
  AND salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;
