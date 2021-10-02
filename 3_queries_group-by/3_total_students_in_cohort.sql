SELECT cohorts.name, count(*) AS total_students
FROM cohorts
LEFT OUTER JOIN  students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(*) >= 18
ORDER BY total_students;
