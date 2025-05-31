

/* 
Which remote job postings list exactly 3 distinct skills, 
and what are their titles, salaries, and skillsets?

-This query identifies remote jobs (where job_work_from_home is TRUE)
with non-null salary data, and filters for those 
that list exactly three unique skills. 
It returns a sample of 5 such job postings along with their job titles, 
associated skills, and annual salary.
*/

SELECT DISTINCT
    j.job_id ID,
    j.job_title_short JOBS,
    string_agg(distinct sk2.skills,' | ') as SKILLSET,
    ROUND(MAX(j.salary_year_avg),0) MAX_SALARY
FROM 
    job_postings_fact j 
JOIN skills_job_dim as sk ON j.job_id = sk.job_id  
INNER JOIN skills_dim as sk2 ON sk.skill_id = sk2.skill_id 
WHERE 
    j.job_work_from_home = 'TRUE' and 
    j.salary_year_avg is not NULL
GROUP BY   
    j.job_id ,
    j.job_title_short
HAVING count(distinct sk2.skills) = 3
LIMIT 5 ;


--Wrapping results to JSON:


SELECT json_agg(result)
FROM (
  SELECT DISTINCT
    j.job_id ID,
    j.job_title_short JOBS,
    string_agg(distinct sk2.skills,' | ') as SKILLSET,
    ROUND(MAX(j.salary_year_avg),0) MAX_SALARY
    FROM 
        job_postings_fact j 
    JOIN skills_job_dim as sk ON j.job_id = sk.job_id  
    INNER JOIN skills_dim as sk2 ON sk.skill_id = sk2.skill_id 
    WHERE 
        j.job_work_from_home = 'TRUE' and 
        j.salary_year_avg is not NULL
    GROUP BY   
        j.job_id ,
        j.job_title_short
    HAVING count(distinct sk2.skills) = 3
    LIMIT 5
) result;



