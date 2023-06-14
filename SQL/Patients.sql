USE SQLBASICS;
CREATE TABLE Patients (
    Date DATE,
    Patient_ID VARCHAR(20) PRIMARY KEY NOT NULL,
    Patient_Name VARCHAR(100),
    Age INTEGER,
    Weight INTEGER,
    Gender CHAR(7),
    Location VARCHAR(100),
    Phone_Number VARCHAR(15),
    Disease VARCHAR(100),
    Doctor_Name VARCHAR(100),
    Doctor_ID INTEGER
);
SHOW TABLES;

INSERT INTO Patients (Date, Patient_ID, Patient_Name, Age, Weight, Gender, Location, Phone_Number, Disease, Doctor_Name, Doctor_ID)
VALUES
    ('2019-06-15', 'AP2021', 'Sarath', 67, 76, 'Male', 'chennai', '5462829', 'Cardiac', 'Mohan', 21),
    ('2019-02-13', 'AP2022', 'John', 62, 80, 'Male', 'banglore', '1234731', 'Cancer', 'Suraj', 22),
    ('2018-01-08', 'AP2023', 'Henry', 43, 65, 'Male', 'Kerala', '9028320', 'Liver', 'Mehta', 23),
    ('2020-02-04', 'AP2024', 'Carl', 56, 72, 'Female', 'Mumbai', '9293829', 'Asthma', 'Karthik', 24),
    ('2017-09-15', 'AP2025', 'Shikar', 55, 71, 'Male', 'Delhi', '7821281', 'Cardiac', 'Mohan', 21),
    ('2018-07-22', 'AP2026', 'Piysuh', 47, 59, 'Male', 'Haryana', '8912819', 'Cancer', 'Suraj', 22),
    ('2017-03-25', 'AP2027', 'Stephen', 69, 55, 'Male', 'Gujarat', '8888211', 'Liver', 'Mehta', 23),
    ('2019-04-22', 'AP2028', 'Aaron', 75, 53, 'Male', 'Banglore', '9012192', 'Asthma', 'Karthik', 24);

SELECT * FROM PATIENTS;

SELECT COUNT(PATIENT_ID) AS 'Total Number of Patients' FROM PATIENTS;

SELECT Patient_ID, Patient_Name, Gender, Disease
FROM Patients
WHERE Age = (SELECT MAX(Age) FROM Patients);

SELECT Patient_ID, Patient_Name, CURDATE() AS 'Current_Date' FROM Patients;

SELECT UCASE(Patient_Name) FROM PATIENTS;

SELECT PATIENT_NAME, LENGTH(PATIENT_NAME) AS PATIENT_LENGTH FROM PATIENTS;

UPDATE PATIENTS
SET Gender = 'F' 
WHERE Gender = 'Female';

UPDATE PATIENTS
SET Gender = 'M' 
WHERE Gender = 'Male';

SELECT Patient_Name, Gender FROM PATIENTS;

SELECT Patient_Name,Doctor_Name, concat(Patient_Name, '/', Doctor_Name) As 'Patient/Doctor' FROM Patients;

SELECT Patient_Name, Age, LOG(10, Age) as Log_Age
FROM Patients;

Select YEAR(Date) AS Patient_Year FROM PATIENTS;

SELECT NULLIF(Patient_Name, Doctor_Name) AS Patient_Name FROM Patients;

SELECT Patient_Name, IF(Age > 40, 'Yes', 'No') AS AgeOver40 FROM Patients;

SELECT Doctor_Name
FROM Patients
GROUP BY Doctor_Name
HAVING COUNT(*) > 1;
