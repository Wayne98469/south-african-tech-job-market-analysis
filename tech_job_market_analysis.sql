-- South African Tech Job Market Analysis
-- Table name assumed: tech_jobs

SELECT COUNT(*) AS total_jobs FROM tech_jobs;

SELECT Role, COUNT(*) AS job_count
FROM tech_jobs GROUP BY Role ORDER BY job_count DESC;

SELECT Role, ROUND(AVG(Monthly_Salary_ZAR),0) AS avg_monthly_salary
FROM tech_jobs GROUP BY Role ORDER BY avg_monthly_salary DESC;

SELECT Work_Type, COUNT(*) AS job_count
FROM tech_jobs GROUP BY Work_Type ORDER BY job_count DESC;

SELECT Location, ROUND(AVG(Monthly_Salary_ZAR),0) AS avg_monthly_salary
FROM tech_jobs GROUP BY Location ORDER BY avg_monthly_salary DESC;

SELECT Role, COUNT(*) AS entry_level_jobs
FROM tech_jobs WHERE Experience = '0-1 years'
GROUP BY Role ORDER BY entry_level_jobs DESC;
