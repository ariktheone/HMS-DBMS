-- Create Database
CREATE DATABASE HMS;
USE HMS;

-- Create Tables
CREATE TABLE Patient(
    email varchar(50) PRIMARY KEY,
    password varchar(30) NOT NULL,
    name varchar(50) NOT NULL,
    address varchar(60) NOT NULL,
    gender VARCHAR(20) NOT NULL
);

CREATE TABLE MedicalHistory(
    id int PRIMARY KEY,
    date DATE NOT NULL,
    conditions VARCHAR(100) NOT NULL, 
    surgeries VARCHAR(100) NOT NULL, 
    medication VARCHAR(100) NOT NULL
);

CREATE TABLE Doctor(
    email varchar(50) PRIMARY KEY,
    gender varchar(20) NOT NULL,
    password varchar(30) NOT NULL,
    name varchar(50) NOT NULL
);

CREATE TABLE Appointment(
    id int PRIMARY KEY,
    date DATE NOT NULL,
    starttime TIME NOT NULL,
    endtime TIME NOT NULL,
    status varchar(15) NOT NULL
);

CREATE TABLE PatientsAttendAppointments(
    patient varchar(50) NOT NULL,
    appt int NOT NULL,
    concerns varchar(40) NOT NULL,
    symptoms varchar(40) NOT NULL,
    FOREIGN KEY (patient) REFERENCES Patient (email) ON DELETE CASCADE,
    FOREIGN KEY (appt) REFERENCES Appointment (id) ON DELETE CASCADE,
    PRIMARY KEY (patient, appt)
);

CREATE TABLE Schedule(
    id int NOT NULL,
    starttime TIME NOT NULL,
    endtime TIME NOT NULL,
    breaktime TIME NOT NULL,
    day varchar(20) NOT NULL,
    PRIMARY KEY (id, starttime, endtime, breaktime, day)
);

CREATE TABLE PatientsFillHistory(
    patient varchar(50) NOT NULL,
    history int NOT NULL,
    FOREIGN KEY (patient) REFERENCES Patient (email) ON DELETE CASCADE,
    FOREIGN KEY (history) REFERENCES MedicalHistory (id) ON DELETE CASCADE,
    PRIMARY KEY (history)
);

CREATE TABLE Diagnose(
    appt int NOT NULL,
    doctor varchar(50) NOT NULL,
    diagnosis varchar(40) NOT NULL,
    prescription varchar(50) NOT NULL,
    FOREIGN KEY (appt) REFERENCES Appointment (id) ON DELETE CASCADE,
    FOREIGN KEY (doctor) REFERENCES Doctor (email) ON DELETE CASCADE,
    PRIMARY KEY (appt, doctor)
);

CREATE TABLE DocsHaveSchedules(
    sched int NOT NULL,
    doctor varchar(50) NOT NULL,
    FOREIGN KEY (sched) REFERENCES Schedule (id) ON DELETE CASCADE,
    FOREIGN KEY (doctor) REFERENCES Doctor (email) ON DELETE CASCADE,
    PRIMARY KEY (sched, doctor)
);

CREATE TABLE DoctorViewsHistory(
    history int NOT NULL,
    doctor varchar(50) NOT NULL,
    FOREIGN KEY (doctor) REFERENCES Doctor (email) ON DELETE CASCADE,
    FOREIGN KEY (history) REFERENCES MedicalHistory (id) ON DELETE CASCADE,
    PRIMARY KEY (history, doctor)
);

-- Inserting Patients
INSERT INTO Patient(email, password, name, address, gender)
VALUES
('ramesh.kumar@gmail.com', 'securepass123', 'Ramesh Kumar', 'Tamil Nadu', 'male'),
('suresh.patel@gmail.com', 'securepass123', 'Suresh Patel', 'Karnataka', 'male'),
('rakesh.sharma@gmail.com', 'securepass123', 'Rakesh Sharma', 'Gujarat', 'male'),
('anita.verma@gmail.com', 'securepass123', 'Anita Verma', 'Maharashtra', 'female'),
('geeta.singh@gmail.com', 'securepass123', 'Geeta Singh', 'Delhi', 'female'),
('john.doe@gmail.com', 'securepass123', 'John Doe', 'West Bengal', 'male'),
('jane.doe@gmail.com', 'securepass123', 'Jane Doe', 'Uttar Pradesh', 'female'),
('peter.parker@gmail.com', 'securepass123', 'Peter Parker', 'Rajasthan', 'male'),
('mary.jane@gmail.com', 'securepass123', 'Mary Jane', 'Haryana', 'female'),
('harry.potter@gmail.com', 'securepass123', 'Harry Potter', 'Madhya Pradesh', 'male'),
('alex.smith@gmail.com', 'securepass123', 'Alex Smith', 'Punjab', 'male'),
('lisa.white@gmail.com', 'securepass123', 'Lisa White', 'Maharashtra', 'female'),
('raj.kumar@gmail.com', 'securepass123', 'Raj Kumar', 'Uttar Pradesh', 'male'),
('priya.verma@gmail.com', 'securepass123', 'Priya Verma', 'Bihar', 'female'),
('sita.rao@gmail.com', 'securepass123', 'Sita Rao', 'Kerala', 'female');

-- Inserting Medical History with unique IDs
INSERT INTO MedicalHistory(id, date, conditions, surgeries, medication)
VALUES
(1, '2023-01-19', 'Pain in abdomen', 'Appendectomy', 'Paracetamol'),
(2, '2023-01-20', 'Frequent Indigestion', 'none', 'Antacids'),
(3, '2023-01-21', 'Body Pain', 'none', 'Iodex'),
(4, '2023-02-10', 'High Blood Pressure', 'Angioplasty', 'Lisinopril'),
(5, '2023-02-12', 'Diabetes', 'none', 'Metformin'),
(6, '2023-03-01', 'Allergies', 'none', 'Cetirizine'),
(7, '2023-03-05', 'Anxiety', 'none', 'Sertraline'),
(8, '2023-03-10', 'Flu', 'none', 'Oseltamivir'),
(9, '2023-03-15', 'Migraine', 'none', 'Sumatriptan'),
(10, '2023-03-20', 'Chronic Pain', 'Knee Surgery', 'Tramadol'),
(11, '2023-03-25', 'Asthma', 'none', 'Inhaler'),
(12, '2023-04-02', 'Seasonal Allergies', 'none', 'Loratadine'),
(13, '2023-04-15', 'Hypertension', 'none', 'Atenolol'),
(14, '2023-04-20', 'High Cholesterol', 'none', 'Atorvastatin'),
(15, '2023-04-25', 'Gout', 'none', 'Allopurinol');

-- Inserting Doctors
INSERT INTO Doctor(email, gender, password, name)
VALUES
('hrishikesh.athalye@gmail.com', 'male', 'docpass123', 'Hrishikesh Athalye'),
('anita.malhotra@gmail.com', 'female', 'docpass123', 'Anita Malhotra'),
('deepak.jain@gmail.com', 'male', 'docpass123', 'Deepak Jain'),
('sanjay.mehra@gmail.com', 'male', 'docpass123', 'Sanjay Mehra'),
('nisha.agarwal@gmail.com', 'female', 'docpass123', 'Nisha Agarwal'),
('karan.bhatia@gmail.com', 'male', 'docpass123', 'Karan Bhatia'),
('priya.sharma@gmail.com', 'female', 'docpass123', 'Priya Sharma'),
('amit.kumar@gmail.com', 'male', 'docpass123', 'Amit Kumar'),
('meera.rathore@gmail.com', 'female', 'docpass123', 'Meera Rathore'),
('rahul.singh@gmail.com', 'male', 'docpass123', 'Rahul Singh');

-- Inserting Appointments
INSERT INTO Appointment(id, date, starttime, endtime, status)
VALUES
(1, '2023-01-15', '09:00', '10:00', 'Done'),
(2, '2023-01-16', '10:00', '11:00', 'Pending'),
(3, '2023-01-18', '14:00', '15:00', 'Cancelled'),
(4, '2023-01-20', '11:00', '12:00', 'Done'),
(5, '2023-01-22', '15:00', '16:00', 'Pending'),
(6, '2023-02-01', '10:30', '11:30', 'Done'),
(7, '2023-02-03', '14:30', '15:30', 'Done'),
(8, '2023-02-05', '16:00', '17:00', 'Pending'),
(9, '2023-02-07', '09:00', '10:00', 'Done'),
(10, '2023-02-10', '12:00', '13:00', 'Pending'),
(11, '2023-03-01', '14:00', '15:00', 'Done'),
(12, '2023-03-02', '10:00', '11:00', 'Pending'),
(13, '2023-03-05', '11:30', '12:30', 'Cancelled'),
(14, '2023-03-07', '09:00', '10:00', 'Done'),
(15, '2023-03-08', '10:30', '11:30', 'Pending'),
(16, '2023-03-10', '13:00', '14:00', 'Done');

-- Inserting Patients Attendance to Appointments
INSERT INTO PatientsAttendAppointments(patient, appt, concerns, symptoms)
VALUES
('ramesh.kumar@gmail.com', 1, 'chronic pain', 'severe pain in legs'),
('suresh.patel@gmail.com', 2, 'frequent headaches', 'throbbing pain'),
('rakesh.sharma@gmail.com', 3, 'shortness of breath', 'tightness in chest'),
('anita.verma@gmail.com', 4, 'check-up', 'no concerns'),
('geeta.singh@gmail.com', 5, 'fatigue', 'low energy'),
('john.doe@gmail.com', 6, 'allergy', 'sneezing and itchiness'),
('jane.doe@gmail.com', 7, 'general health', 'feeling unwell'),
('peter.parker@gmail.com', 8, 'minor cuts', 'pain and swelling'),
('mary.jane@gmail.com', 9, 'stomach ache', 'nausea'),
('harry.potter@gmail.com', 10, 'check-up', 'no symptoms'),
('alex.smith@gmail.com', 11, 'fever', 'high temperature'),
('lisa.white@gmail.com', 12, 'back pain', 'pain while bending'),
('raj.kumar@gmail.com', 13, 'knee pain', 'difficulty walking'),
('priya.verma@gmail.com', 14, 'general fatigue', 'feeling tired'),
('sita.rao@gmail.com', 15, 'skin rash', 'itchy and red');

-- Inserting Doctor Schedules
INSERT INTO Schedule(id, starttime, endtime, breaktime, day)
VALUES
(1, '08:00', '16:00', '12:00', 'Monday'),
(1, '08:00', '16:00', '12:00', 'Tuesday'),
(2, '09:00', '17:00', '12:00', 'Wednesday'),
(2, '09:00', '17:00', '12:00', 'Thursday'),
(3, '10:00', '18:00', '13:00', 'Friday'),
(3, '10:00', '18:00', '13:00', 'Saturday');

-- Inserting Doctors Schedule
INSERT INTO DocsHaveSchedules(sched, doctor)
VALUES
(1, 'hrishikesh.athalye@gmail.com'),
(1, 'anita.malhotra@gmail.com'),
(2, 'deepak.jain@gmail.com'),
(2, 'sanjay.mehra@gmail.com'),
(3, 'nisha.agarwal@gmail.com'),
(3, 'karan.bhatia@gmail.com');

-- Inserting Diagnoses for New Appointments
INSERT INTO Diagnose(appt, doctor, diagnosis, prescription)
VALUES
(1, 'karan.bhatia@gmail.com', 'Anxiety', 'Counseling'),
(2, 'meera.rathore@gmail.com', 'Fever', 'Fluids and rest'),
(3, 'rahul.singh@gmail.com', 'Chest Pain', 'ECG and medication'),
(4, 'deepak.jain@gmail.com', 'Fatigue', 'Sleep and vitamin supplements'),
(5, 'nisha.agarwal@gmail.com', 'Stress', 'Meditation and therapy'),
(6, 'sanjay.mehra@gmail.com', 'Headache', 'Pain relievers');

-- Inserting Doctor Views History for New Patients
INSERT INTO DoctorViewsHistory(history, doctor)
VALUES
(1, 'karan.bhatia@gmail.com'),
(2, 'meera.rathore@gmail.com'),
(3, 'sanjay.mehra@gmail.com'),
(4, 'deepak.jain@gmail.com'),
(5, 'nisha.agarwal@gmail.com'),
(6, 'hrishikesh.athalye@gmail.com');
