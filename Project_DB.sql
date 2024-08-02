create database ScheduleMaster;
use ScheduleMaster;
CREATE TABLE user (
  userId INT AUTO_INCREMENT PRIMARY KEY,
  role VARCHAR(20),
  firstName VARCHAR(20),
  lastName VARCHAR(20),
  userName VARCHAR(30) NOT NULL UNIQUE,
  password VARCHAR(16) NOT NULL,
  regi_date DATETIME,
  status BOOLEAN
);

CREATE TABLE faculty (
  facultyId INT AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(20),
  lastName VARCHAR(20),
  panId VARCHAR(20) UNIQUE,
  dob DATE,
  mobileNo VARCHAR(15),
  userId INT,
  FOREIGN KEY (userId) REFERENCES user(userId)
);

CREATE TABLE student (
  id int primary key auto_increment,
  firstName VARCHAR(20),
  lastName VARCHAR(20),
  userName VARCHAR(20),
  email VARCHAR(20) UNIQUE,
  mobileNo VARCHAR(15),
  address VARCHAR(30),
  state VARCHAR(15),
  city VARCHAR(15),
  courseName VARCHAR(15),
  courseRollNo DATE,
  userId INT,
  FOREIGN KEY (userId) REFERENCES user(userId)
);

CREATE TABLE course (
  courseId VARCHAR(8) PRIMARY KEY,
  courseName VARCHAR(20),
  capacity INT NOT NULL,
  facultyId INT,
  FOREIGN KEY (facultyId) REFERENCES faculty(facultyId)
);


CREATE TABLE Schedule (
  scheduleId INT AUTO_INCREMENT PRIMARY KEY,
  facultyId INT NOT NULL,
  courseId VARCHAR(8) NOT NULL,
  date DATE NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  status VARCHAR(20) DEFAULT 'Pending',
  FOREIGN KEY (facultyId) REFERENCES faculty(facultyId),
  FOREIGN KEY (courseId) REFERENCES course(courseId)
);

CREATE TABLE Subject (
  subjectId INT,
  subjectName VARCHAR(30),
  hours INT,
  facultyId INT,
  FOREIGN KEY (facultyId) REFERENCES faculty(facultyId)
);