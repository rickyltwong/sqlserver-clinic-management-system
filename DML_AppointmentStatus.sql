USE db-cms;
GO

INSERT INTO AppointmentStatus (status_name)
VALUES ('scheduled'),
       ('registered'),
       ('in progress'),
       ('completed'),
       ('no show'),
       ('cancelled');