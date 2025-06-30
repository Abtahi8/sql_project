/*
Question: What are the top-paying data analyst jobs?
- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into employment options and location flexibility.
*/

SELECT 
    job_title,
    name,
    salary_year_avg

FROM job_postings_fact AS J
LEFT JOIN company_dim AS C ON J.company_id = C.company_id

WHERE job_title_short LIKE '%Data Analyst%'
    AND salary_year_avg IS NOT NULL
    AND job_location = 'Anywhere'
ORDER BY salary_year_avg DESC
LIMIT 10;