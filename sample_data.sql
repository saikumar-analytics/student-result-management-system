-- sample_data.sql
-- run this after schema.sql to load some test data

INSERT INTO Departments (department_name) VALUES
('Computer Science'),
('Mathematics'),
('Physics');

INSERT INTO Students (first_name, last_name, department_id, enrollment_year, email) VALUES
('Aman', 'Verma', 1, 2023, 'aman.verma@example.com'),
('Priya', 'Sharma', 1, 2023, 'priya.sharma@example.com'),
('Rohit', 'Singh', 2, 2022, 'rohit.singh@example.com'),
('Neha', 'Gupta', 3, 2023, 'neha.gupta@example.com'),
('Karan', 'Patel', 2, 2022, 'karan.patel@example.com');

INSERT INTO Subjects (subject_name, department_id) VALUES
('Data Structures', 1),
('Database Systems', 1),
('Linear Algebra', 2),
('Calculus', 2),
('Mechanics', 3);

INSERT INTO Exams (exam_name, exam_date, subject_id) VALUES
('Midterm', '2024-03-10', 1),
('Final', '2024-05-20', 1),
('Midterm', '2024-03-12', 2),
('Final', '2024-05-22', 2),
('Midterm', '2024-03-15', 3),
('Final', '2024-05-25', 5);

INSERT INTO Results (student_id, exam_id, marks_obtained, grade) VALUES
(1, 1, 78.50, 'B'),
(1, 2, 85.00, 'A'),
(2, 1, 92.00, 'A'),
(2, 3, 67.50, 'C'),
(3, 5, 55.00, 'D'),
(4, 6, 88.00, 'A'),
(5, 5, 73.00, 'B');
