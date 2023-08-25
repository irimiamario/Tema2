INSERT INTO Address (street, city, state, postalCode, country)
VALUES ('Strada A', 'Bucuresti', 'Ilfov', 700001, 'Romania');
INSERT INTO Professor (staffNumber, salary, yearsOfService, numberOfClasses)
VALUES (101, 1200, 5, 4);
INSERT INTO Student (studentNumber, averageMark, addressPostalCode)
VALUES (1, 85, 700001);
INSERT INTO Person (name, phoneNumber, emailAddress, addressPostalCode)
VALUES ('Alex Macel', '0773456788', 'alex@yahoo.com', 700001);

SELECT * FROM Student WHERE averageMark > 80;
SELECT * FROM Professor WHERE salary > 1000;

UPDATE Professor SET salary = 1500 WHERE staffNumber = 101;
UPDATE Student SET averageMark = 85 WHERE studentNumber = 2;

DELETE FROM Person WHERE emailAddress = 'alex@yahoo.com';
DELETE FROM Student WHERE studentNumber = 2;

SELECT Student.studentNumber, Student.averageMark, Address.street, Address.city
FROM Student
INNER JOIN Address ON Student.addressPostalCode = Address.postalCode;

SELECT Student.studentNumber, Professor.staffNumber
FROM Student
LEFT JOIN StudentProfessor ON Student.studentNumber = StudentProfessor.studentNumber
LEFT JOIN Professor ON StudentProfessor.staffNumber = Professor.staffNumber;