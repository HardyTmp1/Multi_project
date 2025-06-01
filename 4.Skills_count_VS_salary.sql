
/* Is there a correlation between the number of skills required and job salary?
Count number of skills per job.
Compare it to salary_year_avg.
*/

WITH number_of_skills as (
SELECT DISTINCT
    j.job_id ID, 
    count(distinct sjd.skill_id) count_skills
FROM job_postings_fact j 
INNER JOIN skills_job_dim sjd ON j.job_id = sjd.job_id 
GROUP BY 
    ID
),
job_salary as (
    SELECT
        j.job_id ID,
        j.salary_year_avg SALARY 
    FROM job_postings_fact j 
    WHERE j.salary_year_avg is not NULL
    ORDER BY ID asc
)
SELECT 
    ns.count_skills,
    round(avg(js.salary),0) SALARY
FROM 
    number_of_skills ns
INNER JOIN job_salary js on ns.id = js.id
GROUP BY 
    count_skills
ORDER BY 
    count_skills

/*This query analyzes job postings to investigate whether 
jobs that require more distinct skills tend to offer higher salaries.
It counts the number of unique skills listed per job, 
filters for jobs with known (non-null) salaries, and then 
calculates the average salary for each skill-count level.
This helps determine if there's a trend or correlation between 
skill requirements and compensation.
*/
