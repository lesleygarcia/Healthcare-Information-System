INSERT INTO User (Name, Role, Username, PasswordHash)
VALUES
('Admin User', 'Admin', 'admin', 'admin123'),
('Dr Smith', 'Doctor', 'drsmith', 'pass123'),
('Sarah Johnson', 'Receptionist', 'sarah', 'pass123'),
('Bill Carter', 'Billing', 'bill', 'pay123');

INSERT INTO Patient (Name, DOB, Address, Contact, MedicalHistory)
VALUES
('John Doe', '1990-05-10', '123 Main St', '555-1234', 'None'),
('John Doe', '1990-05-10', '123 Main St', '555-1234', 'None');

INSERT INTO Appointment (PatientID, Doctor, AppointmentDate, AppointmentTime, Status)
VALUES
(1, 'Dr. Smith', '2025-01-15', '10:30:00', 'Completed'),
(1, 'Dr. Smith', '2025-01-15', '10:30:00', 'Scheduled'),
(1, 'Dr. Smith', '2025-12-05', '09:00:00', 'Scheduled'),
(1, 'Dr. Smith', '2025-12-05', '09:00:00', 'Scheduled'),
(1, 'Dr. Smith', '2025-12-05', '09:00:00', 'Scheduled'),
(1, 'Dr. Smith', '2025-02-01', '11:00:00', 'Scheduled');

INSERT INTO Billing (PatientID, AppointmentID, Amount, PaymentStatus, DateIssued)
VALUES
(1, 1, 150.00, 'Paid', '2025-11-24'),
(1, 1, 150.00, 'Unpaid', '2025-12-01'),
(1, 1, 150.00, 'Unpaid', '2025-12-01'),
(1, 1, 150.00, 'Unpaid', '2025-12-01'),
(1, 1, 150.00, 'Unpaid', '2025-12-01');
