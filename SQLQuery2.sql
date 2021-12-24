--CREATE DATABASE lab2_2;
USE lab2;
 
CREATE TABLE Schedules
(
	schedule_id INT PRIMARY KEY IDENTITY NOT NULL,
    teacher_Id INT NOT NULL,
    lesson_number INT NOT NULL,
    lesson_Id INT NOT NULL,
    week_day VARCHAR(30),
    cabinet INT NOT NULL
);

	CREATE TABLE Students
(
	student_id INT PRIMARY KEY IDENTITY NOT NULL,
    class_Id INT NOT NULL,
    schedule_id INT,
    phone_number INT NOT NULL,
    school_Id INT NOT NULL,
    adress VARCHAR(30),
	birthday_date INT NOT NULL, 
	student_name VARCHAR(50)
);
CREATE TABLE Classes
(
    class_Id INT PRIMARY KEY IDENTITY NOT NULL,
    teacher_id INT NOT NULL,
	number_of_students INT NOT NULL,
    cabinet INT NOT NULL,
	class_name VARCHAR(30)
);
CREATE TABLE Schools
(
    school_Id INT PRIMARY KEY IDENTITY NOT NULL,
    teacher_Id INT NOT NULL,
    number_of_classes INT NOT NULL,
    adress VARCHAR(50) NOT NULL,
    speciality VARCHAR(50),
    email_adress VARCHAR(50) NOT NULL,
	study_level VARCHAR(50)
);
CREATE TABLE Teachers
(
	teacher_Id INT PRIMARY KEY IDENTITY NOT NULL,
    teacher_name VARCHAR(50) NOT NULL,
    lesson_Id INT NOT NULL,
    phone_number INT NOT NULL,
    email_adress VARCHAR(50) NOT NULL,
	experience INT NOT NULL,
	position VARCHAR(50) NOT NULL
);
CREATE TABLE Lesson
(
    lesson_Id INT PRIMARY KEY IDENTITY NOT NULL,
	lesson_name VARCHAR(50) NOT NULL
);
CREATE TABLE Positions
(
    position_id INT PRIMARY KEY IDENTITY NOT NULL,
	position VARCHAR(50) NOT NULL,
	pay INT NOT NULL
);

ALTER TABLE Schedules
    ADD FOREIGN KEY (schedule_id) REFERENCES Schedules(schedule_id),
        FOREIGN KEY (teacher_Id) REFERENCES Teachers(teacher_Id),
        FOREIGN KEY (lesson_id) REFERENCES Lessons(lesson_id);

ALTER TABLE Students
    ADD FOREIGN KEY (schedule_id) REFERENCES Schedules(schedule_id),
        FOREIGN KEY (class_Id) REFERENCES Classes(class_Id),
        FOREIGN KEY (school_Id) REFERENCES Schools(school_Id);

ALTER TABLE Classes
    ADD FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id);

ALTER TABLE Schools
    ADD FOREIGN KEY (teacher_Id) REFERENCES Teachers(teacher_Id);

ALTER TABLE Teachers
    ADD FOREIGN KEY (lesson_Id) REFERENCES Lessons(lesson_Id),
        FOREIGN KEY (position) REFERENCES Positions(position);

DROP TABLE Schedules
DROP TABLE Students
DROP TABLE Classes
DROP TABLE Schools
DROP TABLE Teachers
DROP TABLE Lesson
DROP TABLE Positions