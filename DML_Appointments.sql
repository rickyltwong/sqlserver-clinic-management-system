USE db-cms;
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (102, 104, 'consultation', '2023-08-01', '09:00:00', 1, 0, '2023-08-01', 103, GETDATE(), 103)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (105, 108, 'follow-up', '2023-08-02', '10:00:00', 1, 0, '2023-08-02', 105, GETDATE(), 105)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 117, 'vaccination', '2023-08-02', '11:00:00', 1, 0, '2023-08-02', 107, GETDATE(), 107)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (115, 128, 'check-up', '2023-08-03', '12:00:00', 6, 0, '2023-08-03', 109, GETDATE(), 109)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (120, 130, 'emergency', '2023-08-04', '13:00:00', 1, 1, '2023-08-04', 110, GETDATE(), 110)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (125, 134, 'consultation', '2023-08-04', '14:00:00', 1, 0, '2023-08-04', 111, GETDATE(), 111)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (130, 104, 'follow-up', '2023-08-05', '10:00:00', 1, 0, '2023-08-05', 119, GETDATE(), 119)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (135, 108, 'vaccination', '2023-08-07', '11:00:00', 1, 0, '2023-08-07', 120, GETDATE(), 120)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (140, 117, 'check-up', '2023-08-07', '12:00:00', 6, 0, '2023-08-07', 124, GETDATE(), 124)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (145, 128, 'emergency', '2023-08-08', '13:00:00', 1, 1, '2023-08-08', 129, GETDATE(), 129)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (103, 118, 'consultation', '2023-07-01', '09:00:00', 2, 0, '2023-07-01 08:30:00', 103, '2023-07-01 08:40:00', 105);

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (103, 125, 'check-up', '2023-07-15', '14:00:00', 4, 0, '2023-07-15 13:30:00', 107, '2023-07-15 13:45:00', 109);

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (103, 130, 'follow-up', '2023-07-30', '11:00:00', 1, 0, '2023-07-30 10:30:00', 111, '2023-07-30 10:35:00', 110);
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (104, 104, 'consultation', '2023-07-01', '10:00:00', 1, 0, '2023-07-01 10:00:00', 103, '2023-07-01 10:00:00', 103), (104, 108, 'follow-up', '2023-07-07', '10:30:00', 1, 0, '2023-07-07 10:30:00', 105, '2023-07-07 10:30:00', 105);

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (104, 104, 'consultation', '2023-07-02', '09:00:00', 4, 0, '2023-07-02', 103, '2023-07-02', 105), (104, 108, 'follow-up', '2023-07-10', '14:30:00', 4, 0, '2023-07-10', 107, '2023-07-10', 109), (104, 117, 'vaccination', '2023-07-18', '16:45:00', 2, 0, '2023-07-18', 110, '2023-07-18', 111), (104, 125, 'check-up', '2023-07-26', '13:15:00', 1, 0, '2023-07-26', 119, '2023-07-26', 120)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (105, 104, 'consultation', '2023-07-03', '09:00:00', 1, 0, '2023-07-03 09:00:00', 103, '2023-07-03 09:00:00', 103)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (105, 118, 'follow-up', '2023-07-10', '09:00:00', 3, 0, '2023-07-10 09:00:00', 107, '2023-07-10 09:00:00', 107)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (105, 134, 'check-up', '2023-07-17', '09:00:00', 4, 0, '2023-07-17 09:00:00', 110, '2023-07-17 09:00:00', 110)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (105, 138, 'vaccination', '2023-07-24', '09:00:00', 5, 0, '2023-07-24 09:00:00', 124, '2023-07-24 09:00:00', 124)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (106, 104, 'consultation', '2023-07-03', '09:00:00', 4, 0, '2023-07-03 09:30:00', 103, '2023-07-03 10:00:00', 103)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (106, 116, 'follow-up', '2023-07-10', '14:00:00', 4, 0, '2023-07-10 14:30:00', 105, '2023-07-10 15:00:00', 105)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (106, 125, 'vaccination', '2023-07-17', '11:00:00', 4, 0, '2023-07-17 11:30:00', 107, '2023-07-17 12:00:00', 107)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (106, 134, 'check-up', '2023-07-24', '16:00:00', 4, 0, '2023-07-24 16:30:00', 109, '2023-07-24 17:00:00', 109)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (106, 104, 'consultation', '2023-07-03', '09:00:00', 4, 0, '2023-07-03 09:30:00', 103, '2023-07-03 10:00:00', 103)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (106, 116, 'follow-up', '2023-07-10', '14:00:00', 4, 0, '2023-07-10 14:30:00', 105, '2023-07-10 15:00:00', 105)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (106, 125, 'vaccination', '2023-07-17', '11:00:00', 4, 0, '2023-07-17 11:30:00', 107, '2023-07-17 12:00:00', 107)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (106, 134, 'check-up', '2023-07-24', '16:00:00', 4, 0, '2023-07-24 16:30:00', 109, '2023-07-24 17:00:00', 109)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (108, 104, 'consultation', '2023-06-01', '10:00:00', 1, 0, '2023-06-01', 103, '2023-06-01', 103)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (108, 118, 'follow-up', '2023-06-30', '13:00:00', 1, 0, '2023-06-30', 105, '2023-06-30', 105)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (108, 116, 'check-up', '2023-07-15', '10:00:00', 1, 0, '2023-07-15', 107, '2023-07-15', 107)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (108, 128, 'emergency', '2023-08-01', '20:00:00', 1, 1, '2023-08-01', 109, '2023-08-01', 109)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (109, 130, 'consultation', '2023-06-10', '10:00:00', 1, 0, '2023-06-10', 103, '2023-06-10', 103)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (109, 134, 'follow-up', '2023-06-20', '13:00:00', 1, 0, '2023-06-20', 105, '2023-06-20', 105)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (109, 132, 'check-up', '2023-07-10', '10:00:00', 1, 0, '2023-07-10', 107, '2023-07-10', 107)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (109, 138, 'vaccination', '2023-08-10', '20:00:00', 1, 0, '2023-08-10', 109, '2023-08-10', 109)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 134, 'consultation', '2023-01-10', '10:00:00', 4, 0, '2023-01-10', 105, '2023-01-10', 105)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 116, 'follow-up', '2023-02-15', '14:00:00', 4, 0, '2023-02-15', 103, '2023-02-15', 103)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 118, 'check-up', '2023-03-21', '11:00:00', 4, 0, '2023-03-21', 107, '2023-03-21', 107)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 134, 'follow-up', '2023-04-01', '13:00:00', 4, 0, '2023-04-01', 110, '2023-04-01', 110)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 135, 'check-up', '2023-05-11', '10:30:00', 4, 0, '2023-05-11', 103, '2023-05-11', 103)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 125, 'follow-up', '2023-06-21', '11:30:00', 4, 0, '2023-06-21', 119, '2023-06-21', 119)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 134, 'consultation', '2023-07-01', '10:00:00', 4, 0, '2023-07-01', 124, '2023-07-01', 124)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 132, 'follow-up', '2023-07-21', '15:00:00', 4, 0, '2023-07-21', 124, '2023-07-21', 124)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 135, 'check-up', '2023-07-31', '12:00:00', 4, 0, '2023-07-31', 119, '2023-07-31', 119)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (110, 134, 'follow-up', '2023-08-07', '11:00:00', 4, 0, '2023-08-07', 120, '2023-08-07', 120)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 116, 'check-up', '2023-01-10', '10:00:00', 4, 0, '2023-01-10', 109, '2023-01-10', 109)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 108, 'follow-up', '2023-02-20', '11:00:00', 4, 0, '2023-02-20', 105, '2023-02-20', 105)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 132, 'consultation', '2023-03-30', '14:00:00', 4, 0, '2023-03-30', 133, '2023-03-30', 133)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 135, 'follow-up', '2023-04-10', '16:00:00', 4, 0, '2023-04-10', 107, '2023-04-10', 107)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 134, 'emergency', '2023-05-20', '15:00:00', 3, 1, '2023-05-20', 110, '2023-05-20', 110)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 130, 'follow-up', '2023-06-30', '13:00:00', 5, 0, '2023-06-30', 111, '2023-06-30', 111)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 118, 'check-up', '2023-07-10', '11:00:00', 4, 0, '2023-07-10', 119, '2023-07-10', 119)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 128, 'emergency', '2023-07-20', '14:00:00', 3, 1, '2023-07-20', 120, '2023-07-20', 120)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 125, 'follow-up', '2023-08-01', '16:00:00', 4, 0, '2023-08-01', 124, '2023-08-01', 124)
GO

INSERT INTO [dbo].[Appointments] ([patient_id], [physician_id], [appointment_type], [appointment_date], [appointment_time], [status_id], [is_walkin], [created_on], [created_by], [last_modified_on], [last_modified_by])
VALUES (111, 132, 'follow-up', '2023-08-07', '17:00:00', 4, 0, '2023-08-07', 129, '2023-08-07', 129)
GO

INSERT INTO [dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])
VALUES (115,138,'consultation','2023-08-04','08:30:00',4,0,'2023-08-04',129,'2023-08-04',129)
GO

INSERT INTO [dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])
VALUES (117,138,'vaccination','2023-08-04','09:30:00',4,0,'2023-08-04',129,'2023-08-04',129)
GO

INSERT INTO [dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])
VALUES (118,138,'emergency','2023-08-04','10:30:00',4,1,'2023-08-04',129,'2023-08-04',129)
GO

INSERT INTO [dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])
VALUES (119,138,'follow-up','2023-08-04','14:00:00',4,0,'2023-08-04',129,'2023-08-04',129)
GO

INSERT INTO [dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])
VALUES (120,138,'consultation','2023-08-04','15:00:00',4,0,'2023-08-04',129,'2023-08-04',129)
GO


INSERT INTO [dbo].[Appointments]([patient_id],[physician_id],[appointment_type],
[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],
[created_by],[last_modified_on],[last_modified_by])
VALUES (121,138,'emergency','2023-08-04','20:00:00',4,1,'2023-08-04',107,'2023-08-04',107)
GO

INSERT INTO [dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])
VALUES (121,138,'follow-up','2023-08-07', '10:00:00',1,0,'2023-08-04',105, '2023-08-07',105)
GO


INSERT INTO[dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])VALUES(132, 128, 'consultation', '2023-01-05', '09:00:00', 4, 0, '2023-01-03', 103, '2023-01-05', 105)
GO

INSERT INTO[dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])VALUES(132, 134, 'follow-up', '2023-02-10', '10:30:00', 4, 0, '2023-02-07', 107, '2023-02-10', 110)
GO

INSERT INTO[dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])VALUES(132, 138, 'check-up', '2023-03-15', '14:00:00', 4, 0, '2023-03-12', 111, '2023-03-15', 119)
GO

INSERT INTO[dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])VALUES(132, 117, 'vaccination', '2023-04-20', '15:30:00', 4, 0, '2023-04-18', 120, '2023-04-20', 124)
GO

INSERT INTO[dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])VALUES(132, 130, 'follow-up', '2023-05-25', '11:00:00', 4, 0, '2023-05-23', 129, '2023-05-25', 133)
GO

INSERT INTO[dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])VALUES(132, 132, 'consultation', '2023-06-10', '09:45:00', 4, 0, '2023-06-07', 136, '2023-06-10', 133)
GO

INSERT INTO[dbo].[Appointments]([patient_id],[physician_id],[appointment_type],[appointment_date],[appointment_time],[status_id],[is_walkin],[created_on],[created_by],[last_modified_on],[last_modified_by])VALUES(132, 125, 'check-up', '2023-07-05', '14:15:00', 4, 0, '2023-07-02', 133, '2023-07-05', 136)
GO