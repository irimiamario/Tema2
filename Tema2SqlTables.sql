CREATE TABLE Address (
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    postalCode INT NOT NULL,
    country VARCHAR(255) NOT NULL,
    PRIMARY KEY (postalCode)
);

CREATE TABLE Person (
    name VARCHAR(255) NOT NULL,
    phoneNumber VARCHAR(20),
    emailAddress VARCHAR(255),
    addressPostalCode INT,
    PRIMARY KEY (emailAddress),
    FOREIGN KEY (addressPostalCode) REFERENCES Address(postalCode)
);

CREATE TABLE Student (
    studentNumber INT NOT NULL,
    averageMark INT,
    addressPostalCode INT,
    PRIMARY KEY (studentNumber, addressPostalCode),
    FOREIGN KEY (addressPostalCode) REFERENCES Address(postalCode)
);

CREATE TABLE Professor (
    staffNumber INT PRIMARY KEY,
    salary INT,
    yearsOfService INT,
    numberOfClasses INT
);

ALTER TABLE Professor ADD CONSTRAINT CHK_NumberOfClasses CHECK (numberOfClasses >= 0);

CREATE TABLE StudentProfessor (
    studentNumber INT,
    staffNumber INT,
    PRIMARY KEY (studentNumber, staffNumber),
    FOREIGN KEY (studentNumber) REFERENCES Student(studentNumber),
    FOREIGN KEY (staffNumber) REFERENCES Professor(staffNumber)
);