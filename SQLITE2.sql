CREATE TABLE IF NOT EXISTS Teacher(
teacher_id TEXT PRIMARY KEY,
teacher_name TEXT,
subject TEXT,
salary REAL
);
INSERT INTO Teacher(teacher_id, teacher_name, subject, salary)
VALUES("t101", "Farida", "Maths", 75000),
("t202", "Narjis", "Urdu", 70000),
("t303", "Zainab", "Science", 80000);
SELECT * FROM Teacher;

CREATE TABLE IF NOT EXISTS Students(
student_id TEXT PRIMARY KEY,
student_name TEXT,
grade TEXT,
fav_subject TEXT
);
INSERT INTO Students(student_id, student_name, grade, fav_subject)
VALUES("st101", "Fatima", "7th Grade", "Urdu"),
("st102", "Rania", "7th Grade", "Maths"),
("st103", "Mayeda", "7th Grade", "English");
SELECT * FROM Students;
SELECT teacher_name, subject, salary FROM Teacher;
SELECT student_name, grade, fav_subject FROM Students;