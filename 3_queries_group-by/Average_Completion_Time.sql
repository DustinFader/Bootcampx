SELECT s.name AS student, AVG(a.duration) AS average_assignment_duration
FROM students AS s
JOIN assignment_submissions AS a ON s.id = a.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY AVG(a.duration) DESC;
