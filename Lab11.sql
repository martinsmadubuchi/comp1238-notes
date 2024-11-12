SELECT * FROM courses;
SELECT * FROM assignments

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;

SELECT count(*) FROM courses;
SELECT min(due_date) FROM assignments;

SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

SELECT MIN(due_date) AS earliest_due_date
FROM assignments;

SELECT MAX(due_date) AS latest_due_date
FROM assignments;

SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

SELECT MAX(due_date) AS most_recent_completed_date
FROM assignments
WHERE status = 'Completed';