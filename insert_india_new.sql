-- Additional appointments
INSERT INTO Appointment(id, date, starttime, endtime, status) VALUES
(11, '2024-10-29', '09:00', '09:30', 'Scheduled'),
(12, '2024-10-29', '10:00', '10:30', 'Scheduled'),
(13, '2024-10-30', '11:00', '11:30', 'Scheduled'),
(14, '2024-10-30', '12:00', '12:30', 'Scheduled'),
(15, '2024-10-31', '14:00', '14:30', 'Scheduled'),
(16, '2024-10-31', '15:00', '15:30', 'Scheduled'),
(17, '2024-11-01', '10:30', '11:00', 'Scheduled'),
(18, '2024-11-01', '11:30', '12:00', 'Scheduled'),
(19, '2024-11-02', '09:00', '09:30', 'Scheduled'),
(20, '2024-11-02', '10:00', '10:30', 'Scheduled');

-- Linking new appointments to patients
INSERT INTO PatientsAttendAppointments(patient, appt, concerns, symptoms) VALUES
('arjun.sharma@gmail.com', 11, 'Persistent headache', 'Throbbing pain on one side'),
('priya.verma@gmail.com', 12, 'Seasonal allergies', 'Sneezing and nasal congestion'),
('rahul.jain@gmail.com', 13, 'Back pain', 'Lower back discomfort after lifting'),
('sneha.kapoor@gmail.com', 14, 'Fatigue', 'Constant tiredness'),
('neha.singh@gmail.com', 15, 'Digestive issues', 'Bloating and gas'),
('rohit.kumar@gmail.com', 16, 'Ankle pain', 'Swelling and pain in the ankle'),
('ananya.das@gmail.com', 17, 'Sleep issues', 'Trouble staying asleep'),
('vikram.patel@gmail.com', 18, 'Frequent cough', 'Dry cough for the past week'),
('megha.rana@gmail.com', 19, 'Joint pain', 'Stiffness in the knees'),
('aman.gupta@gmail.com', 20, 'Muscle cramps', 'Calf pain during exercise');

-- Assigning doctors for new appointments
INSERT INTO Diagnose(appt, doctor, diagnosis, prescription) VALUES
(11, 'dr.sita.deshmukh@gmail.com', 'Migraine', 'Rest and avoid bright lights'),
(12, 'dr.ramesh.iyer@gmail.com', 'Allergic Rhinitis', 'Antihistamines as needed'),
(13, 'dr.vikash.menon@gmail.com', 'Muscle Strain', 'Rest and avoid heavy lifting'),
(14, 'dr.lakshmi.nair@gmail.com', 'Chronic Fatigue', 'Vitamin B supplements'),
(15, 'dr.abhay.kumar@gmail.com', 'Irritable Bowel Syndrome', 'Probiotics daily'),
(16, 'dr.sushma.bhatt@gmail.com', 'Sprain', 'Compression bandage'),
(17, 'dr.karan.singh@gmail.com', 'Insomnia', 'Sleep hygiene techniques'),
(18, 'dr.sita.deshmukh@gmail.com', 'Viral Infection', 'Cough syrup and rest'),
(19, 'dr.ramesh.iyer@gmail.com', 'Arthritis', 'Joint exercises'),
(20, 'dr.vikash.menon@gmail.com', 'Muscle Strain', 'Stretching exercises');
