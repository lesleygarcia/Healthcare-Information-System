-- Test Case: View All Patients
SELECT * FROM Patient;

-- Test Case: Insert New Appointment
INSERT INTO Appointment (PatientID, Doctor, AppointmentDate, AppointmentTime, Status)
VALUES (1, 'Dr. Smith', '2025-02-01', '11:00:00', 'Scheduled');

-- Test Case: Update Appointment Status to Completed
UPDATE Appointment
SET Status = 'Completed'
WHERE AppointmentID = 1;

-- Test Case: Insert Billing Record
INSERT INTO Billing (PatientID, AppointmentID, Amount, PaymentStatus, DateIssued)
VALUES (1, 1, 150.00, 'Unpaid', '2025-12-01');

-- Test Case: Mark Bill as Paid
UPDATE Billing
SET PaymentStatus = 'Paid'
WHERE BillID = 1;

-- Test Case: Show Unpaid Bills with Patient Name and Appointment Date
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
