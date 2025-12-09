SELECT * FROM Patient;

INSERT INTO Appointment (PatientID, Doctor, AppointmentDate, AppointmentTime, Status)
VALUES (1, 'Dr. Smith', '2025-02-01', '11:00:00', 'Scheduled');

UPDATE Appointment
SET Status = 'Completed'
WHERE AppointmentID = 1;

INSERT INTO Billing (PatientID, AppointmentID, Amount, PaymentStatus, DateIssued)
VALUES (1, 1, 150.00, 'Unpaid', '2025-12-01');

UPDATE Billing
SET PaymentStatus = 'Paid'
WHERE BillID = 1;

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
