-- queries.sql
-- a few queries to test the schema once data is loaded

-- 1. list all students with their department name
SELECT s.student_id, s.first_name, s.last_name, d.department_name
FROM Students s
JOIN Departments d ON s.department_id = d.department_id;

-- 2. get all results for a specific student (change student_id as needed)
SELECT st.first_name, st.last_name, sub.subject_name, e.exam_name, r.marks_obtained, r.grade
FROM Results r
JOIN Students st ON r.student_id = st.student_id
JOIN Exams e ON r.exam_id = e.exam_id
JOIN Subjects sub ON e.subject_id = sub.subject_id
WHERE st.student_id = 1;

-- 3. average marks per subject
SELECT sub.subject_name, ROUND(AVG(r.marks_obtained), 2) AS avg_marks
FROM Results r
JOIN Exams e ON r.exam_id = e.exam_id
JOIN Subjects sub ON e.subject_id = sub.subject_id
GROUP BY sub.subject_name
ORDER BY avg_marks DESC;

-- 4. top scoring student overall
SELECT st.first_name, st.last_name, SUM(r.marks_obtained) AS total_marks
FROM Results r
JOIN Students st ON r.student_id = st.student_id
GROUP BY st.student_id, st.first_name, st.last_name
ORDER BY total_marks DESC
LIMIT 1;

-- 5. students who scored below 60 in any exam (need extra support)
SELECT st.first_name, st.last_name, sub.subject_name, r.marks_obtained
FROM Results r
JOIN Students st ON r.student_id = st.student_id
JOIN Exams e ON r.exam_id = e.exam_id
JOIN Subjects sub ON e.subject_id = sub.subject_id
WHERE r.marks_obtained < 60;
