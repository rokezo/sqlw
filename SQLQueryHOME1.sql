SELECT COUNT(*) AS TeachersCount
FROM Teachers t
JOIN Lectures l ON t.Id = l.TeacherId
JOIN Subjects s ON l.SubjectId = s.Id
JOIN Departments d ON t.DepartmentId = d.Id
WHERE d.Name = 'Software Development';

SELECT COUNT(*) AS LecturesCount
FROM Lectures
WHERE TeacherId = (SELECT Id FROM Teachers WHERE Name = 'Dave McQueen');

SELECT COUNT(*) AS LecturesCount
FROM Lectures
WHERE LectureRoom = 'D201';

SELECT LectureRoom, COUNT(*) AS LecturesCount
FROM Lectures
GROUP BY LectureRoom;

SELECT COUNT(*) AS StudentsCount
FROM GroupsLectures gl
JOIN Lectures l ON gl.LectureId = l.Id
JOIN Teachers t ON l.TeacherId = t.Id
WHERE t.Name = 'Jack Underhill';


SELECT AVG(Salary) AS AverageSalary
FROM Teachers t
JOIN Departments d ON t.DepartmentId = d.Id
JOIN Faculties f ON d.FacultyId = f.Id
WHERE f.Name = 'Computer Science';


SELECT MIN(StudentsCount) AS MinStudentsCount, MAX(StudentsCount) AS MaxStudentsCount
FROM (SELECT COUNT(*) AS StudentsCount FROM GroupsLectures GROUP BY GroupId) AS GroupStudentsCount;

SELECT AVG(Financing) AS AverageFinancing
FROM Departments;


SELECT CONCAT(Name, ' ', Surname) AS FullName, COUNT(*) AS SubjectsCount
FROM Teachers t
JOIN Lectures l ON t.Id = l.TeacherId
GROUP BY t.Id, Name, Surname;

SELECT DayOfWeek, COUNT(*) AS LecturesCount
FROM Lectures
GROUP BY DayOfWeek;


SELECT LectureRoom, COUNT(DISTINCT DepartmentId) AS DepartmentsCount
FROM Lectures
GROUP BY LectureRoom;

SELECT f.Name AS FacultyName, COUNT(*) AS SubjectsCount
FROM Faculties f
JOIN Departments d ON f.Id = d.FacultyId
JOIN Subjects s ON d.Id = s.Id
GROUP BY f.Name;

SELECT TeacherId, LectureRoom, COUNT(*) AS LecturesCount
FROM Lectures
GROUP BY TeacherId, LectureRoom;





