SELECT s.name AS student, AVG(a.duration) AS average_assignment_duration, AVG(assign.duration) AS average_estimated_duration
FROM students AS s
JOIN assignment_submissions AS a ON s.id = a.student_id
JOIN assignments AS assign ON assign.id = a.assignment_id
WHERE s.end_date IS NULL
GROUP BY s.name
HAVING AVG(a.duration) < AVG(assign.duration)
ORDER BY AVG(a.duration);
