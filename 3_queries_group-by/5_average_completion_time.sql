-- SELECT students.name, AVG(assignment_submissions.duration)
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id;
SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;