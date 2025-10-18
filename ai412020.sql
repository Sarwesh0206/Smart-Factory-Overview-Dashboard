CREATE TABLE machines (
    machine_id INT PRIMARY KEY AUTO_INCREMENT,
    machine_name VARCHAR(50),
    line VARCHAR(20),
    location VARCHAR(50),
    installed_date DATE
);
INSERT INTO machines (machine_name, line, location, installed_date)
VALUES
('Lathe_01', 'LineA', 'Pondy_Factory_1', '2020-05-12'),
('Lathe_02', 'LineA', 'Pondy_Factory_1', '2021-03-20'),
('CNC_01',   'LineB', 'Pondy_Factory_1', '2022-01-10');
CREATE TABLE maintenance_logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    machine_id INT,
    event_ts DATETIME,
    action VARCHAR(40),
    notes VARCHAR(200),
    FOREIGN KEY (machine_id) REFERENCES machines(machine_id)
);
INSERT INTO maintenance_logs (machine_id, event_ts, action, notes)
VALUES
(1, '2023-01-15 10:30:00', 'Preventive Check', 'Routine inspection'),
(2, '2023-03-08 15:45:00', 'Repair', 'Replaced tool due to wear'),
(3, '2023-06-20 09:00:00', 'Calibration', 'Adjusted spindle speed');


