SELECT c.name AS cohort, COUNT(*) AS total_submissions
FROM students s
JOIN cohorts c ON s.cohort_id = c.id
JOIN assignment_submissions a ON s.id = a.student_id
GROUP BY c.name
ORDER BY total_submissions DESC;
