mysql -h 127.0.0.1 -P 3306 -u root -p
CREATE DATABASE students;
USE students;


CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,  
    first_name VARCHAR(50),                    
    last_name VARCHAR(50),                     
    dob DATE,                                  
    email VARCHAR(100),                        
    phone_number VARCHAR(20),                  
    address TEXT,                              
    enrollment_date DATE,                      
    gender ENUM('Male', 'Female')    
);

INSERT INTO student (first_name, last_name, dob, email, phone_number, address, enrollment_date, gender)
VALUES
('John', 'Doe', '2000-05-15', 'johndoe@example.com', '555-1234', '123 Main St, City, Country', '2020-08-15', 'Male'),
('Jane', 'Smith', '1999-09-22', 'janesmith@example.com', '555-5678', '456 Elm St, City, Country', '2019-09-10', 'Female');

SELECT * FROM student;
