USE db-cms;
GO

IF OBJECT_ID('dbo.Insurance', 'U') IS NOT NULL
    DROP TABLE dbo.Insurance;

IF OBJECT_ID('dbo.Patients', 'U') IS NOT NULL
    DROP TABLE dbo.Patients;

IF OBJECT_ID('dbo.Employeess', 'U') IS NOT NULL
    DROP TABLE dbo.Employeess;

IF OBJECT_ID('dbo.AppointmentStatus', 'U') IS NOT NULL
    DROP TABLE dbo.AppointmentStatus;

IF OBJECT_ID('dbo.Appointments', 'U') IS NOT NULL
    DROP TABLE dbo.Appointments;

IF OBJECT_ID('dbo.Bills', 'U') IS NOT NULL
    DROP TABLE dbo.Bills;

IF OBJECT_ID('dbo.BillItems', 'U') IS NOT NULL
    DROP TABLE dbo.BillItems;

IF OBJECT_ID('dbo.MedicalRecords', 'U') IS NOT NULL
    DROP TABLE dbo.MedicalRecords;

IF OBJECT_ID('dbo.PatientAllergies', 'U') IS NOT NULL
    DROP TABLE dbo.PatientAllergies;

IF OBJECT_ID('dbo.Payment', 'U') IS NOT NULL
    DROP TABLE dbo.Payment;

IF OBJECT_ID('dbo.Prescriptions', 'U') IS NOT NULL
    DROP TABLE dbo.Prescriptions;

IF OBJECT_ID('dbo.RequestForm', 'U') IS NOT NULL
    DROP TABLE dbo.RequestForm;

IF OBJECT_ID('dbo.StaffSchedule', 'U') IS NOT NULL
    DROP TABLE dbo.StaffSchedule;

/*
 * Tables
 */
IF OBJECT_ID('dbo.Insurance', 'U') IS NULL
BEGIN
    CREATE TABLE Insurance (
        insurance_id INT IDENTITY(1, 1) NOT NULL
        ,provider_name VARCHAR(200)
        ,provider_address VARCHAR(200)
        ,provider_contact VARCHAR(20)
        ,medical_limit DECIMAL(19, 4)
        ,valid_until DATE
        ,created_on DATETIME2(7)
        ,last_modified_on DATETIME2(7)
        ,PRIMARY KEY (insurance_id)
        );
END

IF OBJECT_ID('dbo.Patients', 'U') IS NULL
BEGIN
    CREATE TABLE Patients (
        patient_id INT IDENTITY(1, 1) PRIMARY KEY
        ,insurance_id INT
        ,first_name VARCHAR(200)
        ,last_name VARCHAR(200)
        ,dob DATE
        ,sex CHAR(1)
        ,address_1 VARCHAR(200)
        ,address_2 VARCHAR(200)
        ,city VARCHAR(200)
        ,postal_code VARCHAR(10)
        ,contact_phone VARCHAR(20)
        ,email VARCHAR(200)
        ,is_deceased BIT
        ,emergency_contact VARCHAR(200)
        ,created_on DATETIME2(7)
        ,last_modified_on DATETIME2(7) PRIMARY KEY (patient_id)
        ,FOREIGN KEY (insurance_id) REFERENCES Insurance(insurance_id)
        );
END

IF OBJECT_ID('dbo.Employeess', 'U') IS NULL
BEGIN
    CREATE TABLE Employees (
        emp_id INT IDENTITY(1, 1) PRIMARY KEY
        ,sin_number INT
        ,first_name VARCHAR(200)
        ,last_name VARCHAR(200)
        ,mobile_number VARCHAR(20)
        ,address VARCHAR(200)
        ,is_active BIT
        ,ROLE VARCHAR(50)
        ,cpso_registration_number INT
        ,specialization VARCHAR(200)
        ,cno_registration_number INT
        ,created_on DATETIME2(7)
        ,last_modified_on DATETIME2(7) PRIMARY KEY (emp_id)
        );
END

IF OBJECT_ID('dbo.AppointmentStatus', 'U') IS NULL
BEGIN
    CREATE TABLE AppointmentStatus (
        status_id INT IDENTITY(1, 1)
        ,status_name VARCHAR(200)
        ,PRIMARY KEY (status_id)
        );
END

IF OBJECT_ID('dbo.Appointments', 'U') IS NULL
BEGIN
    CREATE TABLE Appointments (
        appointment_id INT identity(1, 1)
        ,patient_id INT
        ,physician_id INT
        ,appointment_type VARCHAR(200)
        ,appointment_date DATE
        ,appointment_time TIME
        ,status_id INT
        ,is_walkin BIT
        ,created_on DATETIME2
        ,created_by INT
        ,last_modified_on DATETIME2
        ,last_modified_by INT
        ,PRIMARY KEY (appointment_id)
        ,FOREIGN KEY (created_by) REFERENCES Employees(emp_id)
        ,FOREIGN KEY (last_modified_by) REFERENCES Employees(emp_id)
        ,FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
        ,FOREIGN KEY (physician_id) REFERENCES Employees(emp_id)
        ,FOREIGN KEY (status_id) REFERENCES AppointmentStatus(status_id)
        );
END

ALTER TABLE Appointments ADD CONSTRAINT df_created_on DEFAULT SYSDATETIME ()
FOR created_on;

IF OBJECT_ID('dbo.Bills', 'U') IS NULL
BEGIN
    CREATE TABLE Bills (
        bill_id INT identity(1, 1)
        ,patient_id INT
        ,doctor_id INT
        ,billing_staff_id INT
        ,date_of_transaction DATE
        ,created_on DATETIME2
        ,last_modified_on DATETIME2
        ,PRIMARY KEY (bill_id)
        ,FOREIGN KEY (billing_staff_id) REFERENCES Employees(emp_id)
        ,FOREIGN KEY (doctor_id) REFERENCES Employees(emp_id)
        ,FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
        );
END

IF OBJECT_ID('dbo.BillItems', 'U') IS NULL
BEGIN
    CREATE TABLE BillItems (
        item_id INT identity
        ,bill_id INT
        ,service_id INT
        ,quantity INT
        ,price MONEY
        ,PRIMARY KEY (item_id)
        ,FOREIGN KEY (bill_id) REFERENCES Bills(bill_id)
        );
END

IF OBJECT_ID('dbo.MedicalRecords', 'U') IS NULL
BEGIN
    CREATE TABLE MedicalRecords (
        record_id INT identity(1, 1)
        ,patient_id INT
        ,doctor_id INT
        ,visit_date DATE
        ,diagnosis VARCHAR(200)
        ,notes VARCHAR(max)
        ,created_on DATETIME2
        ,PRIMARY KEY (record_id)
        ,FOREIGN KEY (doctor_id) REFERENCES Employees(emp_id)
        ,FOREIGN KEY (doctor_id) REFERENCES Employees(emp_id)
        ,FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
        ,FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
        );
END

IF OBJECT_ID('dbo.PatientAllergies', 'U') IS NULL
BEGIN
    CREATE TABLE PatientAllergies (
        allergy_id INT identity(1, 1)
        ,patient_id INT
        ,allergy VARCHAR(200)
        ,severity VARCHAR(20)
        ,reaction TEXT
        ,PRIMARY KEY (allergy_id)
        ,FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
        );
END

IF OBJECT_ID('dbo.Payment', 'U') IS NULL
BEGIN
    CREATE TABLE Payment (
        payment_id INT identity(1, 1)
        ,bill_id INT
        ,payment_method VARCHAR(200)
        ,payment_status VARCHAR(200)
        ,payment_date DATETIME2
        ,PRIMARY KEY (payment_id)
        ,FOREIGN KEY (bill_id) REFERENCES Bills(bill_id)
        );
END

IF OBJECT_ID('dbo.Prescriptions', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Prescriptions (
        prescription_id INT identity(1, 1)
        ,record_id INT
        ,medication VARCHAR(max)
        ,dosage VARCHAR(50)
        ,prescribed_date DATE
        ,prior_prescription_id INT
        ,PRIMARY KEY (prescription_id)
        ,FOREIGN KEY (prior_prescription_id) REFERENCES Prescriptions(prescription_id)
        ,FOREIGN KEY (record_id) REFERENCES MedicalRecords(record_id)
        );
END

IF OBJECT_ID('dbo.RequestForm', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.RequestForm (
        accession_number INT identity(1, 1)
        ,record_id INT
        ,request_type TEXT
        ,ordered_date DATE
        ,PRIMARY KEY (accession_number)
        ,FOREIGN KEY (record_id) REFERENCES MedicalRecords(record_id)
        )
END

IF OBJECT_ID('dbo.StaffSchedule', 'U') IS NULL
BEGIN
    CREATE TABLE StaffSchedule (
        schedule_id INT identity(1, 1)
        ,emp_id INT
        ,start_date_time DATETIME2
        ,end_date_time DATETIME2
        ,PRIMARY KEY (schedule_id)
        ,FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
        );
END
/*
 * Views
 */
-- View all doctors
CREATE VIEW Doctors
    WITH SCHEMABINDING
AS
SELECT emp_id AS doctor_id, first_name, last_name, cpso_registration_number, specialization, created_on, last_modified_on
FROM dbo.Employees
WHERE ROLE = 'doctor';
GO

-- View all nurses
CREATE VIEW Nurses
    WITH SCHEMABINDING
AS
SELECT emp_id AS nurse_id, first_name, last_name, cno_registration_number, created_on, last_modified_on
FROM dbo.Employees
WHERE ROLE = 'nurse'
GO

-- View all visiting patients' basic information and medical record
CREATE VIEW PatientsRecords
AS
SELECT p.patient_id, CONCAT (p.first_name, ' ', p.last_name) AS Name, p.dob, pa.allergy, mr.visit_date, mr.diagnosis
FROM Patients p
LEFT JOIN PatientAllergies pa ON p.patient_id = pa.patient_id
LEFT JOIN MedicalRecords mr ON p.patient_id = mr.patient_id

/*
 * Triggers
 */

-- "AFTER" trigger: 
CREATE TRIGGER dbo.trg_update_modified_time
ON dbo.Appointments
AFTER INSERT, UPDATE
AS
BEGIN
  UPDATE dbo.Appointments
  SET last_modified_on = SYSDATETIME()
  WHERE appointment_id IN (SELECT appointment_id FROM inserted)
END;
GO

-- "INSTEAD OF" trigger: Check logic of the appointment
CREATE TRIGGER dbo.trg_check_appointment_logic ON dbo.Appointments
INSTEAD OF INSERT
AS
BEGIN
  IF EXISTS (
      SELECT 1
      FROM inserted i
      WHERE i.created_on > DATETIME2FROMPARTS(YEAR(i.appointment_date), MONTH(i.appointment_date), DAY(i.appointment_date), DATEPART(hour, i.appointment_time), DATEPART(minute, i.appointment_time), DATEPART(second, i.appointment_time), DATEPART(millisecond, i.appointment_time), 7)
      )
  BEGIN
    THROW 50001, 'Cannot create appointments that are already in the past', 1;

    RETURN;
  END

  IF EXISTS (
      SELECT 1
      FROM inserted i
      WHERE i.physician_id IS NOT NULL AND NOT EXISTS (
          SELECT 1
          FROM dbo.Employees e
          WHERE e.emp_id = i.physician_id AND e.ROLE = 'doctor'
          )
      )
  BEGIN
    THROW 50002, 'Invalid Physician ID, check if the doctor is active', 1;

    RETURN;
  END

  INSERT INTO dbo.Appointments (patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by)
  SELECT patient_id, physician_id, appointment_type, appointment_date, appointment_time, status_id, is_walkin, created_on, created_by, last_modified_on, last_modified_by
  FROM inserted;
END;
GO


/*
 * Stored Procedures
 */
-- MedicalRecord Management: Get the medical history of a patient (CTE, Joins)
CREATE PROC GetPatientHistory @PatientID INT
AS
BEGIN
    WITH cte_visits
    AS (
        SELECT p.patient_id, p.first_name, p.last_name, dbo.fn_GetAge(p.dob) AS age, p.sex, mr.visit_date, d.first_name + ' ' + d.last_name AS Attending Doctor, d.doctor_id
        FROM Patients p
        JOIN MedicalRecords mr ON p.patient_id = mr.patient_id
        JOIN Doctors d ON mr.doctor_id = d.doctor_id
        ), cte_treatments
    AS (
        SELECT mr.doctor_id, mr.diagnosis, p.medication, p.dosage
        FROM MedicalRecords mr
        JOIN Prescriptions p ON mr.record_id = p.record_id
        )
    SELECT v.first_name + ' ' + v.last_name AS Patient Name, v.age, v.sex, v.visit_date, v.Attending Doctor, t.diagnosis, t.medication, t.dosage
    FROM cte_visits v
    JOIN cte_treatments t ON v.doctor_id = t.doctor_id
    WHERE v.patient_id = @PatientID
    ORDER BY visit_date DESC
END;
GO

-- Employee Management: Find available doctors in a specific day (String functions, Joins)
CREATE PROC sp_Available_doctor @date DATETIME
AS
BEGIN
    SELECT CONCAT (e.first_name, ' ', e.last_name) AS Name, convert(VARCHAR, CONCAT (ss.start_date_time, '-', ss.end_date_time)) AS AavailableTime, a.appointment_date, a.appointment_time, AppointmentStatus.status_name
    FROM Employees e
    JOIN StaffSchedule ss ON e.emp_id = ss.emp_id
    LEFT JOIN Appointments a ON e.emp_id = a.physician_id AND a.appointment_date = @date
    LEFT JOIN AppointmentStatus ON a.status_id = AppointmentStatus.status_id
    WHERE cast(start_date_time AS DATE) = @date
    ORDER BY Name, appointment_time
END

-- Bill Management: Query a patient's bill amount in specific days
CREATE PROC sp_calcBill @patient_id INT, @days INT
AS
BEGIN
    SELECT b.patient_id, sum(quantity * price) AS TotalAmt
    FROM Bills b
    JOIN BillItems bi ON b.bill_id = bi.bill_id
    WHERE patient_id = @patient_id AND b.created_on >= DATEADD(day, - @days, getdate())
    GROUP BY b.patient_id
END

-- Bill Management: Get the monthly income record and analytics of the clinic
CREATE PROC sp_GetClinicIncomeAnalytics AS
BEGIN
    WITH cte_incomedata AS (
        SELECT 
            YEAR(b.date_of_transaction) AS Year, 
            MONTH(b.date_of_transaction) AS Month, 
            SUM(bi.price * bi.quantity) AS TotalRevenue
        FROM bills b
        JOIN BillItems bi ON b.bill_id = bi.bill_id
        GROUP BY YEAR(b.date_of_transaction), MONTH(b.date_of_transaction)
    ),
    cte_percentage_change AS (
        SELECT
            Year,
            Month,
            TotalRevenue,
            LAG(TotalRevenue, 1, NULL) OVER (ORDER BY Year, Month) AS PreviousMonthRevenue
        FROM cte_incomedata
    )
    
    SELECT 
        Year,
        Month,
        TotalRevenue,
        CASE 
            WHEN PreviousMonthRevenue IS NOT NULL THEN ((TotalRevenue - PreviousMonthRevenue) / PreviousMonthRevenue) * 100 
            ELSE NULL 
        END AS RevenuePercentageChange
    FROM cte_percentage_change
    ORDER BY Year DESC, Month DESC;
END;
GO

-- Appointment Management: Display the appointment schedule of a doctor on specified date (Cursor)
CREATE PROCEDURE sp_DisplayDocApptSchedule @doctor_id INT, @date DATE
AS
BEGIN
    IF NOT EXISTS (
            SELECT 1
            FROM dbo.Doctors
            WHERE doctor_id = @doctor_id
            )
    BEGIN
        THROW 50001, 'Invalid Doctor ID.', 1;

        RETURN;
    END

    DECLARE @SlotStart DATETIME;
    DECLARE @SlotEnd DATETIME;
    DECLARE @ApptTime TIME;
    DECLARE @ApptType NVARCHAR(50);

    CREATE TABLE #TimeSlots (SlotStart DATETIME, SlotEnd DATETIME, STATUS VARCHAR(20) DEFAULT 'OFF');

    -- Generate time slots
    DECLARE @StartHour TIME = '00:00';
    DECLARE @EndHour TIME = '23:59';

    SET @SlotStart = DATEADD(HOUR, DATEPART(HOUR, @StartHour), DATEADD(MINUTE, DATEPART(MINUTE, @StartHour), CAST(@date AS DATETIME)));

    WHILE @SlotStart < DATEADD(HOUR, DATEPART(HOUR, @EndHour), DATEADD(MINUTE, DATEPART(MINUTE, @EndHour), CAST(@date AS DATETIME)))
    BEGIN
        SET @SlotEnd = DATEADD(MINUTE, 30, @SlotStart);

        INSERT INTO #TimeSlots (SlotStart, SlotEnd, STATUS)
        VALUES (
            @SlotStart, @SlotEnd, CASE 
                -- Sunday or outside of working hours
                WHEN DATEPART(WEEKDAY, @date) = 1 OR DATEPART(HOUR, @SlotStart) < 8 OR DATEPART(HOUR, @SlotStart) >= 18
                    THEN 'OFF'
                -- Saturday afternoon
                WHEN DATEPART(WEEKDAY, @date) = 7 AND DATEPART(HOUR, @SlotStart) >= 12
                    THEN 'OFF'
                ELSE 'AVAILABLE'
                END
            );

        SET @SlotStart = @SlotEnd;
    END;

    -- Cursor to update status of slots with appointments
    DECLARE appt_cursor CURSOR
    FOR
    SELECT CAST(appointment_time AS DATETIME), appointment_type
    FROM dbo.Appointments
    WHERE physician_id = @doctor_id AND appointment_date = @date;

    OPEN appt_cursor;

    FETCH NEXT
    FROM appt_cursor
    INTO @ApptTime, @ApptType;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        UPDATE #TimeSlots
        SET STATUS = CASE 
                WHEN @ApptType = 'emergency'
                    THEN 'URGENT'
                ELSE 'BOOKED'
                END
        WHERE CAST(SlotStart AS TIME) <= @ApptTime AND @ApptTime < CAST(SlotEnd AS TIME);

        FETCH NEXT
        FROM appt_cursor
        INTO @ApptTime, @ApptType;
    END;

    CLOSE appt_cursor;

    DEALLOCATE appt_cursor;

    -- Output the schedule
    SELECT CONVERT(VARCHAR(5), SlotStart, 108) + '-' + CONVERT(VARCHAR(5), SlotEnd, 108) AS time_slot, STATUS
    FROM #TimeSlots
    ORDER BY SlotStart;

    DROP TABLE #TimeSlots;
END;
GO

/*
 * Functions
 */

-- Calculate the age of patient (SVF)
CREATE FUNCTION dbo.fn_GetAge (@dob DATE)
RETURNS INT
AS
BEGIN
    DECLARE @age INT;

    SET @age = DATEDIFF(year, @dob, GETDATE());

    IF (MONTH(GETDATE()) < MONTH(@dob) OR (MONTH(GETDATE()) = MONTH(@dob) AND DAY(GETDATE()) < DAY(@dob)))
        SET @age = @age - 1;

    RETURN @age;
END
GO

-- Return patient's non-settled bills
CREATE FUNCTION fn_getPatientNonPaidBills(@patient_id INT)
    RETURNS TABLE
        WITH SCHEMABINDING
        AS
        RETURN
            (SELECT b.bill_id,
                    bi.item_id,
                    b.date_of_transaction,
                    bi.name,
                    bi.quantity,
                    bi.price,
                    p.payment_method,
                    p.payment_status,
                    p.payment_date
             FROM dbo.bills b
                      JOIN dbo.BillItems bi ON b.bill_id = bi.bill_id
                      JOIN dbo.Payment p ON b.bill_id = p.bill_id
             WHERE b.patient_id = @patient_id
               AND p.payment_status NOT IN ('Paid'));
GO


-- Return a table of patients who haven't had an appointment in the last given number of days.
CREATE FUNCTION GetPatientsWithoutAppointments(@DaysWithoutAppointment INT)
    RETURNS TABLE
        AS
        RETURN
            (
                WITH cte_last_appointment AS (SELECT patient_id, MAX(appointment_date) AS last_appointment
                                              FROM Appointments
                                              GROUP BY patient_id), cte_px_info AS (SELECT patient_id, first_name + ' ' + last_name AS name FROM Patients)
                SELECT l.patient_id, l.last_appointment, i.name, DATEDIFF(DAY, l.last_appointment, GETDATE()) AS days_since_last_appt
                FROM cte_last_appointment l JOIN cte_px_info AS i ON l.patient_id = i.patient_id
                WHERE DATEDIFF(DAY, last_appointment, GETDATE()) > @DaysWithoutAppointment
            );
GO
