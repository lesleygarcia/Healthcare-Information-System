-- TEST QUERIES USED IN DEVELOPMENT

-- View all patients
SELECT * FROM Patient;

-- Insert a new appointment
INSERT INTO Appointment (PatientID, Doctor, AppointmentDate, AppointmentTime, Status)
VALUES (1, 'Dr. Smith', '2025-02-01', '11:00:00', 'Scheduled');

-- Update an appointment status
UPDATE Appointment
SET Status = 'Completed'
WHERE AppointmentID = 1;

-- Insert a billing record
INSERT INTO Billing (PatientID, AppointmentID, Amount, PaymentStatus, DateIssued)
VALUES (1, 1, 150.00, 'Unpaid', '2025-12-01');

-- Mark a bill as paid
UPDATE Billing
SET PaymentStatus = 'Paid'
WHERE BillID = 1;

-- Show unpaid bills with patient name & appointment info
SELECT 
    b.BillID,
    p.Name AS PatientName,
    a.AppointmentDate,
    a.AppointmentTime,
    b.Amount,
    b.PaymentStatus
FROM Billing b
JOIN Patient p ON b.PatientID = p.PatientID
JOIN Appointment a ON b.AppointmentID = a.AppointmentID
WHERE b.PaymentStatus = 'Unpaid';
