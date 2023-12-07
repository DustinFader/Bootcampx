SELECT COUNT(*) total_assistances, t.name
FROM teachers t
JOIN assistance_requests a ON a.teacher_id = t.id
WHERE name = 'Waylon Boehm'
GROUP BY name;
