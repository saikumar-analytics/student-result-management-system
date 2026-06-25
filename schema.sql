-- schema.sql
-- student result management system
-- run this first to set up the database (postgres)

DROP TABLE IF EXISTS Results;
DROP TABLE IF EXISTS Exams;
DROP TABLE IF EXISTS Subjects;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Departments;

-- each student belongs to a department
CREATE TABLE Departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

-- basic student info
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    enrollment_year INT NOT NULL,
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- subjects taught under each department
CREATE TABLE Subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- each exam belongs to one subject
CREATE TABLE Exams (
    exam_id SERIAL PRIMARY KEY,
    exam_name VARCHAR(100) NOT NULL,
    exam_date DATE NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

-- final results table, links students + exams
CREATE TABLE Results (
    result_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    exam_id INT NOT NULL,
    marks_obtained NUMERIC(5,2) NOT NULL,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (exam_id) REFERENCES Exams(exam_id)
);
