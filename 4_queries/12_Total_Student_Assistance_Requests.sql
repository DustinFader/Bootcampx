SELECT COUNT(*) total_assistances, s.name
FROM students s
JOIN assistance_requests a ON a.student_id = s.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;
