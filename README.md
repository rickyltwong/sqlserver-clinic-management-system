# Microsoft SQL Server Project - Clinic Management System (CMS)

This project aims to develop a comprehensive database management system for a clinic. The database holds information regarding patients, their medical records, appointments, billing, etc.

### Database Design

![ER Diagram](https://raw.githubusercontent.com/rickyltwong/sqlserver-clinic-management-system/main/erd_mssql.png)

There are 13 tables in the database and they can be divided into 5 modules:

1. **Patient Module**: `Patients`, `Insurance`, `PatientAllergies`
2. **Staff Module**: `Employees`, `StaffSchedule`
3. **Appointment Module**: `Appointments`
4. **Medical Records Module**: `MedicalRecords`, `Prescriptions`, `RequestForm`
5. **Billing Module**: `Bills`, `BillItems`, `Payment`

### Table Descriptions

The following are the descriptions of each table:

- `Patients`: Stores demographic information about patients, including their DOB, gender, and other relevant details.
- `Employees`: Contains information about clinic staff, including physicians, nurses, administrative staff, and their specialties.
- `Insurance`: Holds information related to patients' insurance policies and coverage details.
- `Appointments`: Records upcoming and past appointments, their status, associated physicians, and appointment types.
- `MedicalRecords`: Contains detailed records of each patient visit, including diagnosis and any notes.
- `Prescriptions`: Lists medications prescribed to patients, their dosage, and related medical records.
- `RequestForm`: Stores requests for specific tests and procedures such as blood work or X-rays.
- `Bills`: Contains billing information for each patient visit.
- `BillItems`: Lists individual items on each bill.
- `Payment`: Records payment details, including method and status.
- `PatientAllergies`: Lists any known allergies for each patient.
- `StaffSchedule`: Holds the working schedule for each clinic staff member.

### Technical Highlights

The project consists of the following components:

- **Stored Procedures**: There are 5 stored procedures in the database. The stored procedures are as follows:
  - `GetPatientHistory`: Fetches the entire medical history of a given patient using common table expressions (CTEs) and joins.
  - `sp_Available_doctor`: Lists available doctors for a specified date using string functions and joins.
  - `sp_calcBill`: Computes the total bill amount for a patient within a specific timeframe.
  - `sp_GetClinicIncomeAnalytics`: Provides monthly income analytics for the clinic using CTEs.
  - `sp_DisplayDocApptSchedule`: Displays the complete appointment schedule for a specific doctor on a particular date, leveraging cursors for this.
- **Common Table Expressions (CTEs)**: CTEs are used in the `GetPatientHistory` and `sp_GetClinicIncomeAnalytics` stored procedures. It is also used in the query tracking the sequence of prescriptions.
- **Triggers**:
  - `trg_update_modified_time`: An "AFTER" trigger that updates the last_modified_on field in the Appointments table whenever an insert or update operation occurs.
  - `trg_check_appointment_logic`: An "INSTEAD OF" trigger that checks the appointment logic to ensure its validity before insertion.
- **Functions**:
  - `fn_GetAge`: A scalar-valued function (SVF) to calculate the age of a patient based on their date of birth.
  - `fn_getPatientNonPaidBills`: A table-valued function (TVF) to return non-settled bills for a specific patient.
  - `GetPatientsWithoutAppointments`: A TVF that fetches patients who haven't scheduled an appointment within the last given number of days.
- **Constraints**: Implemented in the system to ensure data accuracy and integrity such as `PRIMARY KEY`, `FOREIGN KEY`, `DEFAULT`.
- **Transactions**: Patient records are updated in a transaction to ensure the integrity of the data.
- **Views**: There are 3 views in the database. The views are as follows:
  - **`Doctors`**: Displays information about all the doctors.
  - **`Nurses`**: Offers details on all nurses.
  - **`PatientsRecords`**: Provides a view on visiting patients' essential information along with their medical records.
- **Indexes**: Indexes are created on the `Doctors` and `Nurses` views to improve query performance.
