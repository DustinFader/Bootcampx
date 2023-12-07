SELECT c.name, AVG(completed_at - started_at) AS average_assistance_time
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assistance_requests a ON s.id = a.student_id
GROUP BY c.name
ORDER BY average_assistance_time;