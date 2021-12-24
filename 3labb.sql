-- CREATE database School
use School;
CREATE TABLE Schedule
(
    schedule_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    week_day VARCHAR(30) NOT NULL,
    cabinet INT NOT NULL,
    lesson_Id INT,
    teacher_id INT,
    class_id INT,
    lesson_num INT NOT NULL 
);
 
CREATE TABLE Student
(
   student_id INT AUTO_INCREMENT PRIMARY KEY  NOT NULL,
    phone_number INT,
    school_Id INT,
    email_adress VARCHAR(30),
    adress VARCHAR(30),
    birthday_date VARCHAR(30), 
    student_name VARCHAR(50)
);
CREATE TABLE Class
(
    class_Id INT AUTO_INCREMENT PRIMARY KEY  NOT NULL,
    teacher_id INT,
    number_of_students INT NOT NULL,
    cabinet INT NOT NULL,
    class_name VARCHAR(30) NOT NULL
);
CREATE TABLE School
(
    school_Id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    teacher_Id INT,
    number_of_classes INT NOT NULL,
    adress VARCHAR(50) NOT NULL,
    speciality VARCHAR(50) NOT NULL,
    email_adress VARCHAR(50) NOT NULL,
    study_level VARCHAR(50) NOT NULL
);
CREATE TABLE Teacher
(
    teacher_Id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    teacher_name VARCHAR(50) NOT NULL,
    lesson_Id INT,
    phone_number INT NOT NULL,
    email_adress VARCHAR(50) NOT NULL,
    experience INT NOT NULL,
    position VARCHAR(50) NOT NULL
);
CREATE TABLE Lessons
(
    lesson_Id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	lesson_name VARCHAR(50) NOT NULL
);
CREATE TABLE Position
(
    position_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    position VARCHAR(50) NOT NULL,
    pay INT NOT NULL
);

INSERT Schedule(week_day, cabinet, lesson_num)
VALUES
('Monday', 22, 1),
('Monday', 30, 2),
('Monday', 124, 3),
('Tuesday', 200, 4),
('Monday', 13, 5),
('Monday', 1, 4),
('Tuesday', 200, 4),
('Tuesday', 10, 1),
('Tuesday', 31, 3),
('Tuesday', 40, 2);

INSERT Lessons(lesson_name)
VALUES
('Math'),
('Phisics'),
('Chemistry'),
('Philosophy');

INSERT School(number_of_classes, adress, speciality, email_adress, study_level)
VALUES
(9, 'Kravchuk 26', 'linguistic', '10sschool@gmail.com', 'secondary incomplete');

INSERT Class(number_of_students, cabinet, class_name)
VALUES
(30, 22, '9-A'),
(31, 30, '9-B');

UPDATE Schedule SET lesson_num = 2 WHERE schedule_id = 1;
UPDATE Schedule SET lesson_num = 1 WHERE schedule_id = 2;

UPDATE Class SET number_of_students = 29 WHERE class_id = 1;

DELETE FROM Schedule WHERE schedule_id = 4;

DELETE FROM Lessons WHERE lesson_id = 4;
SELECT * from Schedule;

INSERT Class(number_of_students, cabinet, class_name)
VALUES
(29, 10, '10-A'),
(31, 13, '11-B'),
(28, 1, '1-C');

INSERT Student(student_name, phone_number)
VALUES
('Ivanov Vasia', 3806767),
('Petrov Ivan', 3809778);

INSERT Student(student_name, email_adress)
VALUES
('Voloshyn Vasia', 'vasia@gmail.com'),
('Fedorov Ivan', 'ivan@gmail.com');

INSERT Student(student_name)
VALUES
('Vakuliuk Ivanna'),
('Kazanishena Irina');

INSERT School(number_of_classes, adress, speciality, email_adress, study_level)
VALUES
(11, 'Kravchuk 1', 'mathematics', '11school@gmail.com', 'secondary complete'),
(11, 'Savchuk 12B', 'mathematics', '12school@gmail.com', 'secondary complete'),
(5, 'Pushkin 22', 'without speciality', '12school@gmail.com', 'primary');

SELECT *from School

