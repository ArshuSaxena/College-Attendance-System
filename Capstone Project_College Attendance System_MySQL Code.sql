CREATE DATABASE college_attendance;
USE college_attendance;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    course VARCHAR(50) NOT NULL
);

CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    attendance_date DATE,
    status ENUM('Present','Absent'),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

