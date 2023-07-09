-- Create the Users table
CREATE TABLE Users (
  id INT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the Courses table
CREATE TABLE Courses (
  id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255),
  instructor_id INT,
  FOREIGN KEY (instructor_id) REFERENCES Users(id)
);

-- Create the Lessons table
CREATE TABLE Lessons (
  id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255),
  course_id INT,
  FOREIGN KEY (course_id) REFERENCES Courses(id)
);

-- Create the Enrollments table
CREATE TABLE Enrollments (
  user_id INT,
  course_id INT,
  PRIMARY KEY (user_id, course_id),
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (course_id) REFERENCES Courses(id)
);

-- Create the Progress table
CREATE TABLE Progress (
  user_id INT,
  lesson_id INT,
  completed BOOLEAN DEFAULT false,
  PRIMARY KEY (user_id, lesson_id),
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (lesson_id) REFERENCES Lessons(id)
);

-- Create the Quizzes table
CREATE TABLE Quizzes (
  id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  lesson_id INT,
  FOREIGN KEY (lesson_id) REFERENCES Lessons(id)
);

-- Create the Questions table
CREATE TABLE Questions (
  id INT PRIMARY KEY,
  text VARCHAR(255) NOT NULL,
  quiz_id INT,
  FOREIGN KEY (quiz_id) REFERENCES Quizzes(id)
);

-- Create the Choices table
CREATE TABLE Choices (
  id INT PRIMARY KEY,
  text VARCHAR(255) NOT NULL,
  question_id INT,
  is_correct BOOLEAN,
  FOREIGN KEY (question_id) REFERENCES Questions(id)
);

-- Create the UserAnswers table
CREATE TABLE UserAnswers (
  user_id INT,
  question_id INT,
  choice_id INT,
  PRIMARY KEY (user_id, question_id),
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (question_id) REFERENCES Questions(id),
  FOREIGN KEY (choice_id) REFERENCES Choices(id)
);
