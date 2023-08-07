-- For the script of the procedures/functions, please refer to the DDL.sql

-- Medical Record Management: Get the medical history of a patient
EXEC GetPatientHistory 108;

-- Medical Record Management: track the sequence of prescriptions (by recursive CTE)
WITH Chain_of_Prescriptions
AS (
    SELECT prescription_id, record_id, medication, dosage, prescribed_date, prior_prescription_id
    FROM dbo.Prescriptions
    WHERE record_id IN (
            SELECT record_id
            FROM dbo.MedicalRecords
            WHERE patient_id = 111
            ) AND prior_prescription_id IS NULL
    
    UNION ALL
    
    SELECT P.prescription_id, P.record_id, P.medication, P.dosage, P.prescribed_date, P.prior_prescription_id
    FROM dbo.Prescriptions P
    JOIN Chain_of_Prescriptions RP ON P.prior_prescription_id = RP.prescription_id
    )
SELECT r.visit_date, r.record_id, r.diagnosis, r.notes, rp.prescription_id, RP.medication, RP.dosage, RP.prescribed_date, RP.prior_prescription_id
FROM Chain_of_Prescriptions RP
JOIN MedicalRecords r ON RP.record_id = r.record_id;

-- Patient Management: List patients above a a given age range
SELECT *
FROM Patients
WHERE dbo.fn_GetAge(dob) >= 60

-- Employee Management: Find available doctors in a given date
EXEC sp_Available_doctor '2023-08-03T00:00:00'

-- Bill Management: Query a patient's total bill amount within a specific time frame.
EXEC sp_calcBill 110, 180;

-- Bill Management: Get the monthly income record and analytics of the clinic
EXEC sp_GetClinicIncomeAnalytics;

-- Appointment Management: Display the appointment schedule of a doctor on a given date
EXEC sp_DisplayDocApptSchedule 108 '2023-08-04';

-- Appointment Management: Display a list of patients who haven't had an appointment in the last given number of days.
select * from GetPatientsWithoutAppointments(10);