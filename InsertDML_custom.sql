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
('harry.potter@gmail.com', 'securepass123', 'Harry Potter', 'Madhya Pradesh', 'male');

-- Inserting Medical History
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
(10, '2023-03-20', 'Chronic Pain', 'Knee Surgery', 'Tramadol');

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
(10, '2023-02-10', '13:00', '14:00', 'Cancelled');

-- Inserting Patients Attendance to Appointments
INSERT INTO PatientsAttendAppointments(patient, appt, concerns, symptoms)
VALUES
('ramesh.kumar@gmail.com', 1, 'none', 'itchy throat'),
('suresh.patel@gmail.com', 2, 'infection', 'fever'),
('rakesh.sharma@gmail.com', 3, 'nausea', 'fever'),
('anita.verma@gmail.com', 4, 'headache', 'migraine'),
('geeta.singh@gmail.com', 5, 'follow-up', 'chronic pain'),
('john.doe@gmail.com', 6, 'back pain', 'lower back stiffness'),
('jane.doe@gmail.com', 7, 'cold', 'sore throat'),
('peter.parker@gmail.com', 8, 'skin rash', 'red spots on skin'),
('mary.jane@gmail.com', 9, 'anxiety', 'panic attacks'),
('harry.potter@gmail.com', 10, 'check-up', 'general weakness');

-- Inserting Doctor Schedules
INSERT INTO Schedule(id, starttime, endtime, breaktime, day)
VALUES
(1, '09:00', '17:00', '12:00', 'Monday'),
(1, '09:00', '17:00', '12:00', 'Wednesday'),
(1, '09:00', '17:00', '12:00', 'Friday'),
(2, '10:00', '18:00', '13:00', 'Tuesday'),
(2, '10:00', '18:00', '13:00', 'Thursday'),
(3, '08:00', '16:00', '12:00', 'Monday'),
(3, '08:00', '16:00', '12:00', 'Tuesday'),
(4, '09:30', '17:30', '12:00', 'Friday'),
(4, '09:30', '17:30', '12:00', 'Saturday'),
(5, '10:00', '18:00', '13:00', 'Thursday');

-- Inserting Patients Fill History
INSERT INTO PatientsFillHistory(patient, history)
VALUES
('ramesh.kumar@gmail.com', 1),
('suresh.patel@gmail.com', 2),
('rakesh.sharma@gmail.com', 3),
('anita.verma@gmail.com', 4),
('geeta.singh@gmail.com', 5),
('john.doe@gmail.com', 6),
('jane.doe@gmail.com', 7),
('peter.parker@gmail.com', 8),
('mary.jane@gmail.com', 9),
('harry.potter@gmail.com', 10);

-- Inserting Diagnoses
INSERT INTO Diagnose(appt, doctor, diagnosis, prescription)
VALUES
(1, 'hrishikesh.athalye@gmail.com', 'Bloating', 'Ibuprofen as needed'),
(2, 'anita.malhotra@gmail.com', 'Muscle soreness', 'Stretch morning/night'),
(3, 'deepak.jain@gmail.com', 'Vitamin Deficiency', 'Good Diet'),
(4, 'hrishikesh.athalye@gmail.com', 'Migraine', 'Rest and hydration'),
(5, 'anita.malhotra@gmail.com', 'Chronic Pain', 'Physical therapy'),
(6, 'deepak.jain@gmail.com', 'Back Pain', 'Rest and pain relievers'),
(7, 'sanjay.mehra@gmail.com', 'Cold', 'Cough syrup'),
(8, 'nisha.agarwal@gmail.com', 'Skin Rash', 'Antihistamine cream'),
(9, 'karan.bhatia@gmail.com', 'Anxiety', 'Therapy sessions'),
(10, 'rahul.singh@gmail.com', 'General Check-up', 'Blood tests');

-- Inserting Doctor Schedules
INSERT INTO DocsHaveSchedules(sched, doctor)
VALUES
(1, 'hrishikesh.athalye@gmail.com'),
(2, 'anita.malhotra@gmail.com'),
(3, 'deepak.jain@gmail.com'),
(4, 'sanjay.mehra@gmail.com'),
(5, 'nisha.agarwal@gmail.com');

-- Inserting Doctor Views History
INSERT INTO DoctorViewsHistory(history, doctor)
VALUES
(1, 'hrishikesh.athalye@gmail.com'),
(2, 'anita.malhotra@gmail.com'),
(3, 'deepak.jain@gmail.com'),
(4, 'sanjay.mehra@gmail.com'),
(5, 'nisha.agarwal@gmail.com'),
(6, 'karan.bhatia@gmail.com'),
(7, 'priya.sharma@gmail.com'),
(8, 'amit.kumar@gmail.com'),
(9, 'meera.rathore@gmail.com'),
(10, 'rahul.singh@gmail.com');
