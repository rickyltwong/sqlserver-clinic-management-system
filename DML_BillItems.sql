        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (2, 'Blood Test', 4, 441.125);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (36, 'MRI Scan', 1, 928.397);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (20, 'Vaccination', 5, 791.8127);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (34, 'MRI Scan', 5, 1371.4831);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (50, 'Physical Therapy Session', 3, 471.2864);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (43, 'Surgery Consultation', 2, 805.4854);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (48, 'X-Ray', 4, 1103.5983);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (19, 'Prescription Medication', 4, 126.1112);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (27, 'Cancer Screening', 2, 1179.4374);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (21, 'X-Ray', 1, 1928.3026);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (35, 'Blood Test', 1, 1553.2471);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (36, 'Dental Cleaning', 1, 203.8952);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (2, 'Surgery Consultation', 1, 1733.0997);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (43, 'Cancer Screening', 5, 1274.2514);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (10, 'X-Ray', 4, 1536.849);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (17, 'Surgery Consultation', 1, 924.3786);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (42, 'Dental Cleaning', 1, 1339.5379);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (8, 'MRI Scan', 3, 1648.4228);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (20, 'Prescription Medication', 2, 1940.6891);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (41, 'Blood Test', 5, 626.0208);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (41, 'Blood Test', 1, 1507.554);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (22, 'Vaccination', 4, 1118.227);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (22, 'MRI Scan', 4, 568.8202);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (36, 'Physical Therapy Session', 5, 876.8167);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (8, 'Cancer Screening', 5, 1767.6688);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (14, 'Physical Therapy Session', 1, 282.9335);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (11, 'Prescription Medication', 3, 197.3484);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (15, 'Dental Cleaning', 2, 102.2575);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (48, 'Surgery Consultation', 1, 1564.7672);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (3, 'General Check-up', 1, 611.0195);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (17, 'Dental Cleaning', 5, 658.7468);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (42, 'Dental Cleaning', 1, 310.8467);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (39, 'Surgery Consultation', 2, 567.7477);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (33, 'Prescription Medication', 4, 393.6308);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (2, 'Blood Test', 1, 226.834);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (11, 'General Check-up', 3, 494.8482);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (24, 'Physical Therapy Session', 1, 1420.9525);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (8, 'Cancer Screening', 4, 1908.3748);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (7, 'Dental Cleaning', 3, 1598.985);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (33, 'Dental Cleaning', 3, 1965.4302);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (35, 'MRI Scan', 2, 1550.2198);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (45, 'Dental Cleaning', 5, 336.5934);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (50, 'General Check-up', 3, 672.4023);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (20, 'X-Ray', 1, 982.3463);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (14, 'Blood Test', 3, 300.8526);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (33, 'Physical Therapy Session', 1, 812.0173);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (47, 'Dental Cleaning', 1, 630.4167);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (28, 'Prescription Medication', 1, 1216.7387);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (15, 'X-Ray', 4, 268.2346);
        INSERT INTO BillItems (bill_id, name, quantity, price) VALUES (41, 'Dental Cleaning', 5, 1689.6963);



DECLARE @bill_id INT = 51
WHILE @bill_id <= 8
BEGIN
    INSERT INTO[dbo].[BillItems]([bill_id],[name],[quantity],[price])
    VALUES
    (@bill_id, 'Consultation', 1, 200.00),
    (@bill_id, 'Diagnostic Tests', 2, 150.00),
    (@bill_id, 'Medication', 10, 10.00)

    SET @bill_id = @bill_id + 1
END
GO

DECLARE @bill_start INT = 58
DECLARE @bill_end INT = 64

WHILE @bill_start <= @bill_end
BEGIN
    INSERT INTO[dbo].[BillItems]([bill_id],[name],[quantity],[price])
    VALUES
    (@bill_start, 'Consultation', 1, 200.00),
    (@bill_start, 'Diagnostic Tests', 2, 100.00),
    (@bill_start, 'Medication: Paracetamol', 10, 10.00),
    (@bill_start, 'Medication: Ibuprofen', 10, 12.00)

    SET @bill_start = @bill_start + 1
END
GO


INSERT INTO[dbo].[BillItems]([bill_id],[name],[quantity],[price])
VALUES
(65, 'Consultation', 1, 200.00),
(65, 'Diagnostic Tests', 2, 220.00),
(65, 'Medication: Paracetamol', 10, 240.00),
(65, 'Medication: Ibuprofen', 10, 250.00),

(66, 'Consultation', 1, 210.00),
(66, 'Diagnostic Tests', 2, 230.00),
(66, 'Medication: Paracetamol', 10, 250.00),
(66, 'Medication: Ibuprofen', 10, 260.00),

(67, 'Consultation', 1, 220.00),
(67, 'Diagnostic Tests', 2, 240.00),
(67, 'Medication: Paracetamol', 10, 260.00),
(67, 'Medication: Ibuprofen', 10, 270.00),

(68, 'Consultation', 1, 230.00),
(68, 'Diagnostic Tests', 2, 250.00),
(68, 'Medication: Paracetamol', 10, 270.00),
(68, 'Medication: Ibuprofen', 10, 280.00),

(69, 'Consultation', 1, 240.00),
(69, 'Diagnostic Tests', 2, 260.00),
(69, 'Medication: Paracetamol', 10, 280.00),
(69, 'Medication: Ibuprofen', 10, 290.00),

(70, 'Consultation', 1, 250.00),
(70, 'Diagnostic Tests', 2, 270.00),
(70, 'Medication: Paracetamol', 10, 290.00),
(70, 'Medication: Ibuprofen', 10, 300.00),

(71, 'Consultation', 1, 260.00),
(71, 'Diagnostic Tests', 2, 280.00),
(71, 'Medication: Paracetamol', 10, 300.00),
(71, 'Medication: Ibuprofen', 10, 310.00),

(72, 'Consultation', 1, 270.00),
(72, 'Diagnostic Tests', 2, 290.00),
(72, 'Medication: Paracetamol', 10, 310.00),
(72, 'Medication: Ibuprofen', 10, 320.00)
GO


INSERT INTO[dbo].[BillItems]([bill_id],[name],[quantity],[price])
VALUES
(73, 'Consultation', 1, 2000.00),
(73, 'Diagnostic Tests', 2, 2200.00),
(73, 'Medication: Paracetamol', 10, 2400.00),
(73, 'Medication: Ibuprofen', 10, 2500.00),

(74, 'Consultation', 1, 2100.00),
(74, 'Diagnostic Tests', 2, 2300.00),
(74, 'Medication: Paracetamol', 10, 2500.00),
(74, 'Medication: Ibuprofen', 10, 2600.00),

(75, 'Consultation', 1, 2200.00),
(75, 'Diagnostic Tests', 2, 2400.00),
(75, 'Medication: Paracetamol', 10, 2600.00),
(75, 'Medication: Ibuprofen', 10, 2700.00),

(76, 'Consultation', 1, 2300.00),
(76, 'Diagnostic Tests', 2, 2500.00),
(76, 'Medication: Paracetamol', 10, 2700.00),
(76, 'Medication: Ibuprofen', 10, 2800.00),

(77, 'Consultation', 1, 2400.00),
(77, 'Diagnostic Tests', 2, 2600.00),
(77, 'Medication: Paracetamol', 10, 2800.00),
(77, 'Medication: Ibuprofen', 10, 2900.00),

(78, 'Consultation', 1, 2500.00),
(78, 'Diagnostic Tests', 2, 2700.00),
(78, 'Medication: Paracetamol', 10, 2900.00),
(78, 'Medication: Ibuprofen', 10, 3000.00),

(79, 'Consultation', 1, 2600.00),
(79, 'Diagnostic Tests', 2, 2800.00),
(79, 'Medication: Paracetamol', 10, 3000.00),
(79, 'Medication: Ibuprofen', 10, 3100.00),

(80, 'Consultation', 1, 2700.00),
(80, 'Diagnostic Tests', 2, 2900.00),
(80, 'Medication: Paracetamol', 10, 3100.00),
(80, 'Medication: Ibuprofen', 10, 3200.00)
GO