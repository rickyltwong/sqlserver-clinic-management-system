-- Additional Data, price of bill items is manually adjusted for demonstration. 
BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Inserting Appointment
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (135, 108, 'consultation', '2023-01-15', '09:00:00', 1, 0, '2023-01-15 08:00:00', 105, '2023-01-15 08:15:00', 105);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (135, 108, '2023-01-15', 'Common cold', 'Adviced rest and medication', '2023-01-15 10:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Paracetamol', '500mg', '2023-01-15', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-01-15');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (135, 108, 105, '2023-01-15', '2023-01-15 11:00:00', '2023-01-15 12:00:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 200.00), (@LastBillID, 'Diagnostic Tests', 2, 220.00), (@LastBillID, 'Medication: Paracetamol', 10, 240.00), (@LastBillID, 'Medication: Ibuprofen', 10, 250.00);

    -- Inserting Payment
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-01-16');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;
GO

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Appointment 1
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (136, 104, 'consultation', '2023-02-05', '10:30:00', 1, 0, '2023-02-05 10:00:00', 103, '2023-02-05 10:15:00', 105);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (136, 104, '2023-02-05', 'Influenza', 'Recommended fluid intake and rest', '2023-02-05 11:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Tamiflu', '75mg', '2023-02-05', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood work', '2023-02-05');

    SET @LastRequestFormID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (136, 104, 105, '2023-02-05', '2023-02-05 12:00:00', '2023-02-05 12:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 300.00), (@LastBillID, 'Diagnostic Tests', 1, 210.00), (@LastBillID, 'Medication: Tamiflu', 20, 12.50);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-02-06');

    -- Appointment 2
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (136, 117, 'follow-up', '2023-03-15', '15:00:00', 3, 0, '2023-03-15 14:45:00', 110, '2023-03-15 15:05:00', 107);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (136, 117, '2023-03-15', 'Influenza - Recovering', 'Continue rest', '2023-03-15 16:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (136, 117, 119, '2023-03-15', '2023-03-15 17:00:00', '2023-03-15 17:15:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Follow-up Consultation', 1, 150.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-03-16');

    -- Appointment 3
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (136, 118, 'vaccination', '2023-04-10', '12:00:00', 2, 0, '2023-04-10 11:30:00', 124, '2023-04-10 11:45:00', 120);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (136, 118, '2023-04-10', 'Flu Shot', 'Vaccination given successfully', '2023-04-10 13:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (136, 118, 120, '2023-04-10', '2023-04-10 14:00:00', '2023-04-10 14:15:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Flu Shot', 1, 50.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Debit Card', 'Completed', '2023-04-11');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;
GO

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Appointment 1 for patient 137
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (137, 116, 'emergency', '2023-05-05', '14:30:00', 3, 1, '2023-05-05 14:00:00', 129, '2023-05-05 14:10:00', 133);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (137, 116, '2023-05-05', 'Minor fracture', 'Recommended X-Ray and cast', '2023-05-05 15:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Xray', '2023-05-05');

    SET @LastRequestFormID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (137, 116, 136, '2023-05-05', '2023-05-05 16:00:00', '2023-05-05 16:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Emergency Consultation', 1, 400.00), (@LastBillID, 'X-Ray', 1, 250.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-05-06');

    -- Appointment 2 for patient 137
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (137, 128, 'follow-up', '2023-06-05', '10:00:00', 2, 0, '2023-06-05 09:30:00', 111, '2023-06-05 09:45:00', 119);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (137, 128, '2023-06-05', 'Fracture Healing', 'Cast removal in next appointment', '2023-06-05 11:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (137, 128, 120, '2023-06-05', '2023-06-05 12:00:00', '2023-06-05 12:15:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Follow-up Consultation', 1, 150.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-06-06');

    -- Appointment 3 for patient 137
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (137, 134, 'check-up', '2023-07-20', '11:00:00', 4, 0, '2023-07-20 10:30:00', 133, '2023-07-20 10:40:00', 136);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (137, 134, '2023-07-20', 'Healed Fracture', 'No further treatment required', '2023-07-20 12:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (137, 134, 124, '2023-07-20', '2023-07-20 13:00:00', '2023-07-20 13:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Check-up Consultation', 1, 100.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Debit Card', 'Completed', '2023-07-21');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Appointment 1 for patient 138
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (138, 125, 'vaccination', '2023-03-01', '15:00:00', 4, 0, '2023-03-01 14:30:00', 133, '2023-03-01 14:45:00', 119);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (138, 125, '2023-03-01', 'Routine Vaccination', 'Given flu shot', '2023-03-01 15:30:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Ibuprofen', '200mg', '2023-03-01', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (138, 125, 110, '2023-03-01', '2023-03-01 16:00:00', '2023-03-01 16:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Vaccination', 1, 700.00), (@LastBillID, 'Medication: Ibuprofen', 10, 150.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-03-02');

    -- Appointment 2 for patient 138
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (138, 117, 'check-up', '2023-04-10', '10:30:00', 2, 0, '2023-04-10 10:00:00', 107, '2023-04-10 10:10:00', 105);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (138, 117, '2023-04-10', 'General Checkup', 'All vitals normal', '2023-04-10 11:15:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (138, 117, 136, '2023-04-10', '2023-04-10 12:00:00', '2023-04-10 12:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Check-up Consultation', 1, 100.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-04-11');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Appointment 3 for patient 138
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (138, 130, 'follow-up', '2023-05-10', '13:00:00', 4, 0, '2023-05-10 12:30:00', 119, '2023-05-10 12:45:00', 120);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (138, 130, '2023-05-10', 'Follow-up after vaccination', 'Patient reports no side effects', '2023-05-10 13:30:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (138, 130, 133, '2023-05-10', '2023-05-10 14:00:00', '2023-05-10 14:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Follow-up Consultation', 1, 50.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-05-11');

    -- Appointment 4 for patient 138
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (138, 134, 'emergency', '2023-06-15', '16:00:00', 3, 1, '2023-06-15 16:00:00', 136, '2023-06-15 16:10:00', 133);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (138, 134, '2023-06-15', 'Sprained Ankle', 'Patient fell down the stairs', '2023-06-15 16:30:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Xray', '2023-06-15');

    SET @LastRequestFormID = @@IDENTITY;

    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Ibuprofen', '400mg', '2023-06-15', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (138, 134, 129, '2023-06-15', '2023-06-15 17:00:00', '2023-06-15 17:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Emergency Consultation', 1, 100.00), (@LastBillID, 'Xray', 1, 150.00), (@LastBillID, 'Medication: Ibuprofen', 20, 25.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-06-16');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Appointment 5 for patient 138
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (138, 116, 'check-up', '2023-07-01', '10:00:00', 4, 0, '2023-07-01 09:30:00', 110, '2023-07-01 09:45:00', 120);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (138, 116, '2023-07-01', 'Routine Check-up', 'All parameters normal', '2023-07-01 10:30:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (138, 116, 133, '2023-07-01', '2023-07-01 11:00:00', '2023-07-01 11:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Check-up Consultation', 1, 750.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-07-02');

    -- Appointment 6 for patient 138
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (138, 128, 'vaccination', '2023-07-20', '14:00:00', 1, 0, '2023-07-20 13:30:00', 133, '2023-07-20 13:40:00', 124);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (138, 128, '2023-07-20', 'Influenza Vaccination', 'Administered without complications', '2023-07-20 14:30:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (138, 128, 124, '2023-07-20', '2023-07-20 15:00:00', '2023-07-20 15:30:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Vaccination Shot', 1, 1500.00), (@LastBillID, 'Nurse Fee', 1, 750.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-07-21');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (139, 104, 'consultation', '2023-01-25', '10:00:00', 1, 0, '2023-01-24 14:00:00', 103, '2023-01-24 14:00:00', 103);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (139, 104, '2023-01-25', 'Headache', 'Prescribed pain relievers and rest', '2023-01-25 12:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Aspirin', '500mg', '2023-01-25', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-01-25');

    SET @LastRequestFormID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (139, 104, 103, '2023-01-25', '2023-01-25 16:00:00', '2023-01-25 16:00:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 3000.00), (@LastBillID, 'Diagnostic Tests', 2, 3300.00), (@LastBillID, 'Medication: Aspirin', 10, 3600.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-01-26');

    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (139, 117, 'follow-up', '2023-02-10', '14:30:00', 1, 0, '2023-02-09 15:00:00', 109, '2023-02-09 15:00:00', 109);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (139, 117, '2023-02-10', 'Back pain', 'Prescribed pain relievers and physical therapy', '2023-02-10 16:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Ibuprofen', '400mg', '2023-02-10', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Xray', '2023-02-10');

    SET @LastRequestFormID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (139, 117, 109, '2023-02-10', '2023-02-10 18:00:00', '2023-02-10 18:00:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 3000.00), (@LastBillID, 'Diagnostic Tests', 1, 1650.00), (@LastBillID, 'Medication: Ibuprofen', 5, 1800.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-02-11');

    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (139, 132, 'consultation', '2023-03-20', '11:00:00', 1, 0, '2023-03-19 16:00:00', 124, '2023-03-19 16:00:00', 124);

    SET @LastAppointmentID = @@IDENTITY;

    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (139, 132, '2023-03-20', 'Sore throat', 'Prescribed antibiotics and throat lozenges', '2023-03-20 12:30:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Amoxicillin', '500mg', '2023-03-20', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-03-20');

    SET @LastRequestFormID = @@IDENTITY;

    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (139, 132, 124, '2023-03-20', '2023-03-20 15:00:00', '2023-03-20 15:00:00');

    SET @LastBillID = @@IDENTITY;

    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 3000.00), (@LastBillID, 'Diagnostic Tests', 2, 3300.00), (@LastBillID, 'Medication: Amoxicillin', 14, 3600.00);

    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Debit Card', 'Completed', '2023-03-21');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Inserting Appointment 4
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (139, 138, 'follow-up', '2023-04-05', '16:00:00', 1, 0, '2023-04-04 18:00:00', 120, '2023-04-04 18:00:00', 120);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord 4
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (139, 138, '2023-04-05', 'Allergy', 'Prescribed antihistamines and avoidance of allergens', '2023-04-05 17:30:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription 4
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Loratadine', '10mg', '2023-04-05', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm 4
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-04-05');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill 4
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (139, 138, 120, '2023-04-05', '2023-04-05 19:00:00', '2023-04-05 19:00:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems 4
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 3000.00), (@LastBillID, 'Diagnostic Tests', 3, 4950.00), (@LastBillID, 'Medication: Loratadine', 20, 5400.00);

    -- Inserting Payment 4
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-04-06');

    -- Inserting Appointment 5
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (139, 128, 'check-up', '2023-05-15', '09:30:00', 1, 0, '2023-05-14 10:00:00', 107, '2023-05-14 10:00:00', 107);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord 5
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (139, 128, '2023-05-15', 'General health check', 'No major concerns, advised regular exercise and healthy diet', '2023-05-15 11:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription 5
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Multivitamin', '1 tablet', '2023-05-15', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm 5
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-05-15');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill 5
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (139, 128, 107, '2023-05-15', '2023-05-15 12:30:00', '2023-05-15 12:30:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems 5
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 3000.00), (@LastBillID, 'Diagnostic Tests', 2, 3300.00), (@LastBillID, 'Medication: Multivitamin', 30, 3600.00);

    -- Inserting Payment 5
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-05-16');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Inserting Appointment 6
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (139, 135, 'consultation', '2023-06-10', '14:00:00', 1, 0, '2023-06-09 16:00:00', 119, '2023-06-09 16:00:00', 119);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord 6
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (139, 135, '2023-06-10', 'Stomach ache', 'Prescribed antacids and advised to avoid spicy food', '2023-06-10 15:30:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription 6
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Antacid', '10mg', '2023-06-10', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm 6
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-06-10');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill 6
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (139, 135, 119, '2023-06-10', '2023-06-10 16:45:00', '2023-06-10 16:45:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems 6
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 4500.00), (@LastBillID, 'Diagnostic Tests', 3, 7425.00), (@LastBillID, 'Medication: Antacid', 30, 8100.00);

    -- Inserting Payment 6
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-06-11');

    -- Inserting Appointment 7
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (139, 125, 'follow-up', '2023-07-20', '12:30:00', 1, 0, '2023-07-19 15:00:00', 110, '2023-07-19 15:00:00', 110);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord 7
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (139, 125, '2023-07-20', 'High blood pressure', 'Prescribed hypertension medication and advised lifestyle changes', '2023-07-20 14:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription 7
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Amlodipine', '5mg', '2023-07-20', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm 7
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-07-20');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill 7
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (139, 125, 110, '2023-07-20', '2023-07-20 16:30:00', '2023-07-20 16:30:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems 7
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 4500.00), (@LastBillID, 'Diagnostic Tests', 2, 4950.00), (@LastBillID, 'Medication: Amlodipine', 20, 5400.00);

    -- Inserting Payment 7
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-07-21');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Inserting Appointment 1
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (140, 108, 'consultation', '2023-02-05', '11:00:00', 1, 0, '2023-02-04 10:00:00', 105, '2023-02-04 10:00:00', 105);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord 1
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (140, 108, '2023-02-05', 'Fever', 'Prescribed medication and advised to rest', '2023-02-05 12:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription 1
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Antipyretic', '500mg', '2023-02-05', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm 1
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-02-05');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill 1
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (140, 108, 105, '2023-02-05', '2023-02-05 14:00:00', '2023-02-05 14:00:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems 1
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 9000.00), (@LastBillID, 'Diagnostic Tests', 2, 9900.00), (@LastBillID, 'Medication: Antipyretic', 20, 10800.00);

    -- Inserting Payment 1
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-02-06');

    -- Inserting Appointment 2
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (140, 117, 'follow-up', '2023-02-15', '15:30:00', 1, 0, '2023-02-14 16:00:00', 109, '2023-02-14 16:00:00', 109);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord 2
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (140, 117, '2023-02-15', 'Upper respiratory infection', 'Prescribed antibiotics and advised to take plenty of fluids', '2023-02-15 17:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription 2
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Antibiotic', '500mg', '2023-02-15', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm 2
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Xray', '2023-02-15');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill 2
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (140, 117, 109, '2023-02-15', '2023-02-15 18:30:00', '2023-02-15 18:30:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems 2
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 9000.00), (@LastBillID, 'Diagnostic Tests', 1, 4950.00), (@LastBillID, 'Medication: Antibiotic', 15, 5400.00);

    -- Inserting Payment 2
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-02-16');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;

BEGIN TRY
        ;

    BEGIN TRAN;

    DECLARE @LastAppointmentID INT;
    DECLARE @LastMedicalRecordID INT;
    DECLARE @LastPrescriptionID INT;
    DECLARE @LastRequestFormID INT;
    DECLARE @LastBillID INT;

    -- Inserting Appointment 1
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (140, 108, 'consultation', '2023-02-05', '11:00:00', 1, 0, '2023-02-04 10:00:00', 105, '2023-02-04 10:00:00', 105);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord 1
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (140, 108, '2023-02-05', 'Fever', 'Prescribed medication and advised to rest', '2023-02-05 12:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription 1
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Antipyretic', '500mg', '2023-02-05', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm 1
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Blood Test', '2023-02-05');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill 1
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (140, 108, 105, '2023-02-05', '2023-02-05 14:00:00', '2023-02-05 14:00:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems 1
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 9000.00), (@LastBillID, 'Diagnostic Tests', 2, 9900.00), (@LastBillID, 'Medication: Antipyretic', 20, 10800.00);

    -- Inserting Payment 1
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Credit Card', 'Completed', '2023-02-06');

    -- Inserting Appointment 2
    INSERT INTO [dbo].[Appointments] (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
    VALUES (140, 117, 'follow-up', '2023-02-15', '15:30:00', 1, 0, '2023-02-14 16:00:00', 109, '2023-02-14 16:00:00', 109);

    SET @LastAppointmentID = @@IDENTITY;

    -- Inserting MedicalRecord 2
    INSERT INTO [dbo].[MedicalRecords] (patient_id, doctor_id, visit_date, diagnosis, notes, created_on)
    VALUES (140, 117, '2023-02-15', 'Upper respiratory infection', 'Prescribed antibiotics and advised to take plenty of fluids', '2023-02-15 17:00:00');

    SET @LastMedicalRecordID = @@IDENTITY;

    -- Inserting Prescription 2
    INSERT INTO [dbo].[Prescriptions] (record_id, medication, dosage, prescribed_date, prior_prescription_id)
    VALUES (@LastMedicalRecordID, 'Antibiotic', '500mg', '2023-02-15', NULL);

    SET @LastPrescriptionID = @@IDENTITY;

    -- Inserting RequestForm 2
    INSERT INTO [dbo].[RequestForm] (record_id, request_type, ordered_date)
    VALUES (@LastMedicalRecordID, 'Xray', '2023-02-15');

    SET @LastRequestFormID = @@IDENTITY;

    -- Inserting Bill 2
    INSERT INTO [dbo].[Bills] (patient_id, doctor_id, billing_staff_id, date_of_transaction, created_on, last_modified_on)
    VALUES (140, 117, 109, '2023-02-15', '2023-02-15 18:30:00', '2023-02-15 18:30:00');

    SET @LastBillID = @@IDENTITY;

    -- Inserting BillItems 2
    INSERT INTO [dbo].[BillItems] (bill_id, name, quantity, price)
    VALUES (@LastBillID, 'Consultation', 1, 9000.00), (@LastBillID, 'Diagnostic Tests', 1, 4950.00), (@LastBillID, 'Medication: Antibiotic', 15, 5400.00);

    -- Inserting Payment 2
    INSERT INTO [dbo].[Payment] (bill_id, payment_method, payment_status, payment_date)
    VALUES (@LastBillID, 'Cash', 'Completed', '2023-02-16');

    COMMIT TRAN;
END TRY

BEGIN CATCH
        ;

    ROLLBACK TRAN;
END CATCH;