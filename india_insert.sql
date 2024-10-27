-- Inserting patients
INSERT INTO Patient(email, password, name, address, gender) VALUES
('arjun.sharma@gmail.com', 'password123', 'Arjun Sharma', 'Delhi', 'male'),
('priya.verma@gmail.com', 'securepass', 'Priya Verma', 'Mumbai', 'female'),
('rahul.jain@gmail.com', 'rahul123', 'Rahul Jain', 'Bengaluru', 'male'),
('sneha.kapoor@gmail.com', 'snehapass', 'Sneha Kapoor', 'Chennai', 'female'),
('neha.singh@gmail.com', 'nehaspass', 'Neha Singh', 'Kolkata', 'female'),
('rohit.kumar@gmail.com', 'rohitpass', 'Rohit Kumar', 'Hyderabad', 'male'),
('ananya.das@gmail.com', 'ananyapass', 'Ananya Das', 'Jaipur', 'female'),
('vikram.patel@gmail.com', 'vikrampass', 'Vikram Patel', 'Ahmedabad', 'male'),
('megha.rana@gmail.com', 'meghapass', 'Megha Rana', 'Lucknow', 'female'),
('aman.gupta@gmail.com', 'amanpass', 'Aman Gupta', 'Pune', 'male');

-- Inserting medical history for patients
INSERT INTO MedicalHistory(id, date, conditions, surgeries, medication) VALUES
(1, '2024-01-10', 'Diabetes', 'none', 'Metformin'),
(2, '2023-06-15', 'Hypertension', 'none', 'Lisinopril'),
(3, '2022-12-01', 'Asthma', 'none', 'Inhaler'),
(4, '2024-02-20', 'Allergies', 'none', 'Antihistamine'),
(5, '2023-10-07', 'Arthritis', 'Joint Surgery', 'Ibuprofen'),
(6, '2023-03-03', 'Migraines', 'none', 'Aspirin'),
(7, '2022-11-18', 'Anemia', 'none', 'Iron Supplements'),
(8, '2024-04-05', 'Insomnia', 'none', 'Melatonin'),
(9, '2023-07-22', 'Back Pain', 'Back Surgery', 'Pain Relievers'),
(10, '2023-09-10', 'Hyperthyroidism', 'none', 'Levothyroxine');

-- Inserting doctors
INSERT INTO Doctor(email, gender, password, name) VALUES
('dr.ramesh.iyer@gmail.com', 'male', 'passdoc1', 'Dr. Ramesh Iyer'),
('dr.sita.deshmukh@gmail.com', 'female', 'passdoc2', 'Dr. Sita Deshmukh'),
('dr.vikash.menon@gmail.com', 'male', 'passdoc3', 'Dr. Vikash Menon'),
('dr.lakshmi.nair@gmail.com', 'female', 'passdoc4', 'Dr. Lakshmi Nair'),
('dr.abhay.kumar@gmail.com', 'male', 'passdoc5', 'Dr. Abhay Kumar'),
('dr.sushma.bhatt@gmail.com', 'female', 'passdoc6', 'Dr. Sushma Bhatt'),
('dr.karan.singh@gmail.com', 'male', 'passdoc7', 'Dr. Karan Singh');

-- Inserting appointments for patients with different doctors
INSERT INTO Appointment(id, date, starttime, endtime, status) VALUES
(1, '2024-10-25', '10:00', '10:30', 'Scheduled'),
(2, '2024-10-25', '11:00', '11:30', 'Scheduled'),
(3, '2024-10-26', '09:00', '09:30', 'Scheduled'),
(4, '2024-10-26', '10:00', '10:30', 'Scheduled'),
(5, '2024-10-27', '08:30', '09:00', 'Scheduled'),
(6, '2024-10-27', '10:30', '11:00', 'Scheduled'),
(7, '2024-10-27', '11:30', '12:00', 'Scheduled'),
(8, '2024-10-27', '14:00', '14:30', 'Scheduled'),
(9, '2024-10-28', '15:00', '15:30', 'Scheduled'),
(10, '2024-10-28', '16:00', '16:30', 'Scheduled');

-- Associating patients with appointments
INSERT INTO PatientsAttendAppointments(patient, appt, concerns, symptoms) VALUES
('arjun.sharma@gmail.com', 1, 'Back Pain', 'Severe pain in lower back'),
('priya.verma@gmail.com', 2, 'Headache', 'Migraine headaches'),
('rahul.jain@gmail.com', 3, 'Fatigue', 'Feeling tired and weak'),
('sneha.kapoor@gmail.com', 4, 'Joint Pain', 'Knee pain after exercise'),
('neha.singh@gmail.com', 5, 'Stomach Pain', 'Bloating and discomfort'),
('rohit.kumar@gmail.com', 6, 'Cold', 'Sore throat and runny nose'),
('ananya.das@gmail.com', 7, 'Anxiety', 'Feeling anxious recently'),
('vikram.patel@gmail.com', 8, 'Sleep Issues', 'Trouble falling asleep'),
('megha.rana@gmail.com', 9, 'Cough', 'Persistent cough for 3 days'),
('aman.gupta@gmail.com', 10, 'Allergy', 'Sneezing and itchy eyes');

-- Scheduling for doctors
INSERT INTO Schedule(id, starttime, endtime, breaktime, day) VALUES
(101, '09:00', '17:00', '12:00', 'Monday'),
(102, '09:00', '17:00', '12:00', 'Tuesday'),
(103, '09:00', '17:00', '12:00', 'Wednesday'),
(104, '09:00', '17:00', '12:00', 'Thursday'),
(105, '09:00', '17:00', '12:00', 'Friday');

-- Associating doctors with schedules
INSERT INTO DocsHaveSchedules(sched, doctor) VALUES
(101, 'dr.ramesh.iyer@gmail.com'),
(102, 'dr.sita.deshmukh@gmail.com'),
(103, 'dr.vikash.menon@gmail.com'),
(104, 'dr.lakshmi.nair@gmail.com'),
(105, 'dr.abhay.kumar@gmail.com'),
(101, 'dr.sushma.bhatt@gmail.com'),
(102, 'dr.karan.singh@gmail.com');

-- Inserting diagnoses by doctors for each appointment
INSERT INTO Diagnose(appt, doctor, diagnosis, prescription) VALUES
(1, 'dr.ramesh.iyer@gmail.com', 'Lower Back Pain', 'Physical therapy'),
(2, 'dr.sita.deshmukh@gmail.com', 'Migraine', 'Avoid caffeine'),
(3, 'dr.vikash.menon@gmail.com', 'Fatigue', 'Vitamin supplements'),
(4, 'dr.lakshmi.nair@gmail.com', 'Arthritis', 'Pain relievers'),
(5, 'dr.abhay.kumar@gmail.com', 'Indigestion', 'Dietary changes'),
(6, 'dr.sushma.bhatt@gmail.com', 'Common Cold', 'Rest and fluids'),
(7, 'dr.karan.singh@gmail.com', 'Anxiety', 'Counseling and meditation'),
(8, 'dr.ramesh.iyer@gmail.com', 'Insomnia', 'Melatonin supplements'),
(9, 'dr.sita.deshmukh@gmail.com', 'Bronchitis', 'Cough syrup'),
(10, 'dr.vikash.menon@gmail.com', 'Allergic Reaction', 'Antihistamines');

-- Inserting patient histories linked to each patient
INSERT INTO PatientsFillHistory(patient, history) VALUES
('arjun.sharma@gmail.com', 1),
('priya.verma@gmail.com', 2),
('rahul.jain@gmail.com', 3),
('sneha.kapoor@gmail.com', 4),
('neha.singh@gmail.com', 5),
('rohit.kumar@gmail.com', 6),
('ananya.das@gmail.com', 7),
('vikram.patel@gmail.com', 8),
('megha.rana@gmail.com', 9),
('aman.gupta@gmail.com', 10);

-- Allowing doctors to view patients' histories
INSERT INTO DoctorViewsHistory(history, doctor) VALUES
(1, 'dr.ramesh.iyer@gmail.com'),
(2, 'dr.sita.deshmukh@gmail.com'),
(3, 'dr.vikash.menon@gmail.com'),
(4, 'dr.lakshmi.nair@gmail.com'),
(5, 'dr.abhay.kumar@gmail.com'),
(6, 'dr.sushma.bhatt@gmail.com'),
(7, 'dr.karan.singh@gmail.com');
