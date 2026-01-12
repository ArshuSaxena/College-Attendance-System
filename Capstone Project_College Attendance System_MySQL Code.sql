CREATE DATABASE college_attendance;
USE college_attendance;

-- Students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    course VARCHAR(50)
);

-- Attendance table
CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    date DATE,
    status ENUM('Present', 'Absent'),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
