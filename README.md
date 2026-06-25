# Student Result Management System

Simple SQL project to manage students, subjects, exams and their results.
Made for PostgreSQL.

## Files

- `schema.sql` - creates the tables (run this first)
- `sample_data.sql` - inserts some test data (run this second)
- `queries.sql` - a few example queries to check everything works

## How to run

1. Open a connection to your postgres database in your SQL tool.
2. Run `schema.sql` to create the tables.
3. Run `sample_data.sql` to fill them with sample data.
4. Run any query from `queries.sql` to test it out.

## Tables

- **Departments** - list of departments (CS, Math, Physics etc.)
- **Students** - student info, linked to a department
- **Subjects** - subjects offered under each department
- **Exams** - exams tied to a subject
- **Results** - marks a student got in an exam

## Notes

Used `SERIAL` for auto-incrementing IDs since this is Postgres
(MySQL's `AUTO_INCREMENT` doesn't work here).
