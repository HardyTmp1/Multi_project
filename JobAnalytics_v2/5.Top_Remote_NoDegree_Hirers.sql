
/* Which companies most frequently hire for jobs that:
   - require no degree
   - are remote
   - pay well (e.g., above $100k or not null)
*/

WITH filtered_jobs AS (
    SELECT
        j.job_id,
        j.company_id,
        j.salary_year_avg
    FROM 
        job_postings_fact j
    WHERE 
        j.job_no_degree_mention = 'TRUE'
        AND j.job_work_from_home = 'TRUE'
        AND j.salary_year_avg IS NOT NULL
)

SELECT
    c.name AS company_name,
    COUNT(fj.job_id) AS job_posting_count,
    ROUND(AVG(fj.salary_year_avg), 0) AS avg_salary
FROM 
    filtered_jobs fj
JOIN company_dim c ON fj.company_id = c.company_id
GROUP BY 
    c.name
ORDER BY 
    job_posting_count DESC
LIMIT 50;


/* KEY TAKEWAYS
This SQL query efficiently identifies the top 50 
companies actively hiring for remote, no-degree-required 
positions with transparent salary information. 
By aggregating job postings and calculating average 
salaries for these specific roles, the query provides valuable 
insights into companies embracing accessible remote work 
opportunities and their compensation trends. 
This analysis can be crucial for understanding the 
landscape of entry-level remote job markets.
*/







