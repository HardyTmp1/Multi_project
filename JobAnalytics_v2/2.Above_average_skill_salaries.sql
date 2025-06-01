/*For each skill listed in job postings, what is the average salary
for jobs that mention the skill, and which of these skills are 
associated with above-average salaries overall?
*/

WITH global_salary as ( 
    SELECT
        AVG(salary_year_avg) global_avg_salary
    FROM 
        job_postings_fact 
),
Skills_salary as (
    SELECT 
        sd.skills,
        AVG(j.salary_year_avg) AVG_SALARY
    FROM 
        job_postings_fact j 
    INNER JOIN skills_job_dim sjd on j.job_id = sjd.job_id 
    INNER JOIN skills_dim sd on sjd.skill_id = sd.skill_id
    GROUP BY skills
)
SELECT 
    ss.skills,
    ss.AVG_SALARY 
FROM 
    Skills_salary ss
CROSS JOIN global_salary gs
WHERE ss.avg_salary  > gs.global_avg_salary


/*This analysis identifies skills that tend to appear in job postings 
with above-average annual salaries. It compares the average salary of 
jobs requiring each specific skill to the overall average salary of 
all job postings in the dataset. Only skills that are linked to 
higher-than-average salaries are included in the results.
*/
    











