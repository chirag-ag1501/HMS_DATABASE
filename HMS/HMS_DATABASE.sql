CREATE DATABASE HospitalDB;
USE HospitalDB;

 -- 1. Patient Table
CREATE TABLE patient (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    gender ENUM('Male', 'Female', 'Other'),
    age INT,
    phone VARCHAR(15),
    address VARCHAR(255)
);
-- PATIENT DB
INSERT INTO patient (name, gender, age, phone, address) VALUES
('Aarav Sharma', 'Male', 25, '9876500001', 'Delhi'),
('Priya Singh', 'Female', 28, '9876500002', 'Dehradun'),
('Rohan Verma', 'Male', 30, '9876500003', 'Mumbai'),
('Neha Gupta', 'Female', 22, '9876500004', 'Lucknow'),
('Karan Mehta', 'Male', 45, '9876500005', 'Pune'),
('Isha Kapoor', 'Female', 29, '9876500006', 'Delhi'),
('Vikram Chauhan', 'Male', 38, '9876500007', 'Noida'),
('Anjali Yadav', 'Female', 27, '9876500008', 'Gurgaon'),
('Rakesh Nair', 'Male', 52, '9876500009', 'Chennai'),
('Divya Reddy', 'Female', 33, '9876500010', 'Hyderabad'),
('Suresh Iyer', 'Male', 41, '9876500011', 'Chennai'),
('Manisha Jain', 'Female', 24, '9876500012', 'Delhi'),
('Amit Malhotra', 'Male', 36, '9876500013', 'Agra'),
('Sneha Patil', 'Female', 31, '9876500014', 'Pune'),
('Rahul Bansal', 'Male', 27, '9876500015', 'Delhi'),
('Meena Dutta', 'Female', 48, '9876500016', 'Kolkata'),
('Vivek Rana', 'Male', 50, '9876500017', 'Bhopal'),
('Kavita Joshi', 'Female', 40, '9876500018', 'Jaipur'),
('Sanjay Sinha', 'Male', 35, '9876500019', 'Patna'),
('Pooja Nair', 'Female', 26, '9876500020', 'Cochin'),
('Aditya Ghosh', 'Male', 32, '9876500021', 'Kolkata'),
('Tanya Oberoi', 'Female', 21, '9876500022', 'Delhi'),
('Harsh Vardhan', 'Male', 37, '9876500023', 'Chandigarh'),
('Nisha Aggarwal', 'Female', 28, '9876500024', 'Ludhiana'),
('Deepak Kumar', 'Male', 43, '9876500025', 'Meerut'),
('Komal Jain', 'Female', 34, '9876500026', 'Indore'),
('Rohit Kapoor', 'Male', 31, '9876500027', 'Delhi'),
('Shreya Tiwari', 'Female', 25, '9876500028', 'Lucknow'),
('Arjun Singh', 'Male', 29, '9876500029', 'Gurgaon'),
('Preeti Deshmukh', 'Female', 27, '9876500030', 'Pune'),
('Ramesh Yadav', 'Male', 50, '9876500031', 'Varanasi'),
('Simran Kaur', 'Female', 22, '9876500032', 'Amritsar'),
('Gaurav Sharma', 'Male', 33, '9876500033', 'Delhi'),
('Nikita Patel', 'Female', 26, '9876500034', 'Ahmedabad'),
('Akhil Jain', 'Male', 28, '9876500035', 'Jaipur'),
('Ritu Arora', 'Female', 45, '9876500036', 'Delhi'),
('Sumit Chauhan', 'Male', 38, '9876500037', 'Noida'),
('Mitali Banerjee', 'Female', 31, '9876500038', 'Kolkata'),
('Rajeev Ranjan', 'Male', 42, '9876500039', 'Patna'),
('Swati Bhatt', 'Female', 30, '9876500040', 'Dehradun'),
('Keshav Singh', 'Male', 27, '9876500041', 'Delhi'),
('Aastha Bansal', 'Female', 23, '9876500042', 'Gurgaon'),
('Lokesh Verma', 'Male', 34, '9876500043', 'Noida'),
('Rachita Joshi', 'Female', 28, '9876500044', 'Jaipur'),
('Dhruv Sharma', 'Male', 29, '9876500045', 'Agra'),
('Ananya Das', 'Female', 33, '9876500046', 'Kolkata'),
('Rajat Kumar', 'Male', 40, '9876500047', 'Lucknow'),
('Snehal Rao', 'Female', 36, '9876500048', 'Hyderabad'),
('Nitin Aggarwal', 'Male', 35, '9876500049', 'Delhi'),
('Mona Singh', 'Female', 25, '9876500050', 'Delhi');


-- 2. Doctor Table
CREATE TABLE doctor (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15)
);
-- DOCTOR DATABASE
INSERT INTO doctor (name, specialization, phone) VALUES
('Dr. Ramesh Khanna', 'Cardiologist', '9001100001'),
('Dr. Meera Sharma', 'Pediatrician', '9001100002'),
('Dr. Arun Patel', 'Orthopedic', '9001100003'),
('Dr. Nidhi Verma', 'Dermatologist', '9001100004'),
('Dr. Ajay Gupta', 'General Physician', '9001100005'),
('Dr. Reema Nair', 'Gynecologist', '9001100006'),
('Dr. Suresh Iyer', 'Neurologist', '9001100007'),
('Dr. Kavita Reddy', 'ENT Specialist', '9001100008');


-- 3. Appointment Table
CREATE TABLE appointment (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    reason VARCHAR(255),
    status ENUM('Scheduled', 'Completed', 'Cancelled'),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id) ON DELETE CASCADE,
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id) ON DELETE SET NULL
);
-- APPOINTMENT DB
INSERT INTO appointment (patient_id, doctor_id, appointment_date, reason, status) VALUES
(1, 1, '2025-10-20 10:00:00', 'Chest pain', 'Completed'),
(2, 5, '2025-10-21 09:30:00', 'Fever', 'Completed'),
(3, 3, '2025-10-22 11:00:00', 'Knee pain', 'Scheduled'),
(4, 2, '2025-10-22 12:30:00', 'Cough and cold', 'Scheduled'),
(5, 6, '2025-10-23 15:00:00', 'Pregnancy checkup', 'Completed'),
(6, 4, '2025-10-24 10:45:00', 'Skin allergy', 'Completed'),
(7, 1, '2025-10-25 09:15:00', 'High BP', 'Scheduled'),
(8, 8, '2025-10-25 13:00:00', 'Ear infection', 'Completed'),
(9, 3, '2025-10-26 10:30:00', 'Back pain', 'Scheduled'),
(10, 5, '2025-10-26 16:00:00', 'Flu symptoms', 'Completed');


-- 4. Billing Table
CREATE TABLE billing (
    bill_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT,
    amount DECIMAL(10,2),
    payment_status ENUM('Paid', 'Unpaid', 'Pending'),
    FOREIGN KEY (appointment_id) REFERENCES appointment(appointment_id) ON DELETE CASCADE
);
-- BILLING DATABASE
INSERT INTO billing (appointment_id, amount, payment_status) VALUES
(1, 1200.00, 'Paid'),
(2, 800.00, 'Paid'),
(3, 1000.00, 'Pending'),
(4, 700.00, 'Unpaid'),
(5, 1500.00, 'Paid'),
(6, 900.00, 'Paid'),
(7, 1300.00, 'Pending'),
(8, 750.00, 'Paid'),
(9, 1100.00, 'Unpaid'),
(10, 850.00, 'Paid');


select* from appointment;
select* from patient;
select* from doctor;
select* from billing;

