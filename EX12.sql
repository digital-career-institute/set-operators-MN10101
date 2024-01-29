SELECT course_id, student_id, student_name, NULL as teacher_id, NULL as teacher_name
FROM students
INTERSECT
SELECT course_id, NULL as student_id, NULL as student_name, teacher_id, teacher_name
FROM teachers;

SELECT students.course_id, student_id, student_name, teacher_id, teacher_name
FROM students
INNER JOIN teachers ON students.course_id = teachers.course_id;

EXPLAIN ANALYZE SELECT course_id, student_id, student_name, NULL as teacher_id, NULL as teacher_name
FROM students
INTERSECT
SELECT course_id, NULL as student_id, NULL as student_name, teacher_id, teacher_name
FROM teachers;

SELECT student_id, student_name, course_id FROM students
EXCEPT
SELECT teacher_id, teacher_name, course_id FROM teachers;

SELECT teachers.course_id, teacher_id, teacher_name, student_id, student_name
FROM teachers
RIGHT OUTER JOIN students ON teachers.course_id = students.course_id;