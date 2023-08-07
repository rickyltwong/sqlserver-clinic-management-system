USE db-cms;
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (1, 'Metformin', '500mg twice daily', '2023-01-10', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (2, 'Lisinopril', '20mg daily', '2023-02-10', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (3, 'Iron supplements', '325mg daily', '2023-03-15', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (4, 'Albuterol Inhaler', 'As needed', '2023-04-20', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (5, 'Ibuprofen', '200mg as needed', '2023-05-25', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (6, 'Fluoxetine', '20mg daily', '2023-06-30', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (7, 'Diazepam', '5mg as needed', '2023-07-05', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (8, 'Acetaminophen', '500mg as needed', '2023-08-10', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (9, 'Non-prescription: Regular exercise', 'N/A', '2023-09-15', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (10, 'Non-prescription: Regular sleep pattern', 'N/A', '2023-10-20', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (11, 'Antacids', 'As needed', '2023-07-01', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (12, 'Topical Steroid Cream', 'Apply twice daily', '2023-07-02', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (13, 'Non-prescription: Sleep hygiene measures', 'N/A', '2023-07-05', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (14, 'Levothyroxine', '50mcg daily', '2023-07-07', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (16, 'Proton Pump Inhibitor', '20mg daily', '2023-07-12', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (17, 'Referred to dermatologist', 'N/A', '2023-07-15', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (18, 'Recommended bone density test', 'N/A', '2023-07-17', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (19, 'Levetiracetam', '500mg twice daily', '2023-07-20', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (20, 'Recommended further tests', 'N/A', '2023-07-22', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (31, 'Lisinopril', '20mg daily', '2023-07-01', NULL);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (32, 'Metformin', '500mg twice daily', '2023-07-07', NULL);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (33, 'Amlodipine', '5mg daily', '2023-07-09', NULL);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (34, 'Metformin', '500mg twice daily', '2023-07-20', NULL);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (35, 'Metformin', '500mg twice daily', '2023-07-23', NULL);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (36, 'Amlodipine', '5 mg daily', '2023-07-01', NULL);

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (37, 'Amlodipine', '5 mg daily', '2023-07-15', 32);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (38, 'Lisinopril', '20mg', '2023-07-01', NULL)
GO
INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (39, 'Lisinopril', '20mg', '2023-07-07', 34);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (40, 'Lisinopril', '20mg daily', '2023-07-02', NULL);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (41, 'Atorvastatin', '40mg daily', '2023-07-10', NULL);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (42, 'Lisinopril', '20mg daily', '2023-07-18', 1), (43, 'Atorvastatin', '40mg daily', '2023-07-26', 2);
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (44, 'Lisinopril', '20 mg once daily', '2023-07-03', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (45, 'Simvastatin', '40 mg once daily', '2023-07-10', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (46, 'Metformin', '500 mg twice daily', '2023-07-17', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (52, 'Metoprolol', '25mg once daily', '2023-06-01', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (53, 'Metoprolol', '25mg once daily', '2023-06-30', 44)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (55, 'Alprazolam', '0.25mg as needed', '2023-08-01', 45)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (56, 'Metformin', '500mg twice daily', '2023-06-10', NULL)
GO

INSERT INTO [dbo].[Prescriptions] ([record_id], [medication], [dosage], [prescribed_date], [prior_prescription_id])
VALUES (57, 'Metformin', '500mg twice daily', '2023-06-20', 49)
GO

INSERT INTO [dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])
VALUES (80,'Ventolin','2 puffs as needed','2023-08-04',NULL)
GO

INSERT INTO [dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])
VALUES (81,'Flu Vaccine','0.5 mL','2023-08-04',NULL)
GO

INSERT INTO [dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])
VALUES (82,'Pain Relief','500 mg every 6 hours','2023-08-04',NULL)
GO

INSERT INTO [dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])
VALUES (83,'Antibiotics','500 mg twice a day','2023-08-04',82)
GO

INSERT INTO [dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])
VALUES (84,'Antihypertensives','Take as prescribed','2023-08-04',NULL)
GO


INSERT INTO [dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])
VALUES (90,'Amoxicillin','500mg three times daily','2023-08-04',NULL)
GO

INSERT INTO [dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])
VALUES (92,'Pain Reliever','2 pills every 6 hours','2023-08-04',NULL)
GO
INSERT INTO [dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])
VALUES (93,'Pain Reliever','1 pill every 8 hours','2023-08-07',92)
GO

INSERT INTO[dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])VALUES(94, 'Amoxicillin', '500mg every 8 hours', '2023-01-05', NULL)
GO

INSERT INTO[dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])VALUES(95, 'Paracetamol', '500mg as needed', '2023-02-10', NULL)
GO

INSERT INTO[dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])VALUES(97, 'Flu vaccine', 'Single dose', '2023-04-20', NULL)
GO

INSERT INTO[dbo].[Prescriptions]([record_id],[medication],[dosage],[prescribed_date],[prior_prescription_id])VALUES(99, 'Ibuprofen', '200mg every 6 hours', '2023-06-10', NULL)
GO