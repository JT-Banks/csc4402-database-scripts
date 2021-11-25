CREATE TABLE student(
student_id INT UNSIGNED NOT NULL PRIMARY KEY,
first_name VARCHAR (50),
last_name VARCHAR (50)
);

CREATE TABLE classes(
class_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
class_name VARCHAR(20),
student_id INT UNSIGNED NOT NULL
);

/* Change name of table */
ALTER TABLE student
RENAME TO students;

/* Insert multiple */
INSERT INTO student VALUES
(4, 'Bobby', 'Hoggins'),
(5, 'Eliza', 'Washington'),
(6, 'Erick', 'Johnson');

INSERT INTO classes VALUES 
(1350, 'Computer Science', 2),
(1101, 'History', 3);

/* Elementary Join */
SELECT student.student_id, classes.student_id
FROM student, classes
WHERE first_name = 'James' AND classes.class_name = 'Biology';

/* Inner join */
SELECT students.student_id,
first_name,
last_name
FROM students
INNER JOIN classes 
ON students.student_id = classes.student_id;

/* LEFT JOIN = Will list data on left table even if it doesn't exist in right table*/
SELECT students.student_id,
CONCAT (first_name, " ", last_name) AS Name
FROM students
LEFT JOIN classes 
ON students.student_id = classes.student_id
GROUP BY students.student_id;

/*Right join = Will list data in right, even if left data doesn't exist*/

CREATE TABLE inst_dept(
    ID INT UNSIGNED NOT NULL PRIMARY KEY,
    name VARCHAR(225),
    salary INT,
    dept_name VARCHAR(50),
    building VARCHAR(25),
    budget INT
);

INSERT INTO inst_dept VALUES
(22222, 'Einstein', 95000, 'Physics', 'Watson', 70000),
(12121, "Wu"),
(),
(),
(),
(),
(),
();