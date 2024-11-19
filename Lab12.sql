SELECT CONCAT(course_name, ' - ', semester) AS course_details
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses

SELECT *
FROM assignments
WHERE due_date > CURRENT_DATE;

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;

SELECT MAX(LENGTH(course_name)) AS max_length
FROM courses;

SELECT course_name
FROM courses
WHERE LENGTH(course_name) = (SELECT MAX(LENGTH(course_name)) FROM courses);

SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT *
FROM assignments
WHERE due_date IS NULL;