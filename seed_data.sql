-- FOODIE Initial Seed Data
-- Run this script on your remote database to populate the initial restaurants and driver

INSERT INTO restaurant (id, name, location, latitude, longitude) VALUES
(2, 'Mefil', 'Banjara Hills', 17.4156, 78.4347),
(3, 'Paradise', 'Madhapur', 17.4483, 78.3915),
(4, 'PistaHouse', 'Uppal', 17.405866, 78.556088),
(5, 'Suruchi', 'Narrapally', 17.414, 78.6475),
(6, 'Ezzy Bites', 'Venkatapoor', 17.4193, 78.6565)
ON DUPLICATE KEY UPDATE name=VALUES(name);

INSERT INTO driver (id, name, phone, email, vehicle_number, status, latitude, longitude) VALUES
(1, 'Rahul', '9876543210', 'rahul@gmail.com', 'TS09AB1234', 'AVAILABLE', 17.4156, 78.4347)
ON DUPLICATE KEY UPDATE name=VALUES(name);

INSERT INTO food (id, name, description, price, category) VALUES
(1, 'Paneer Veg Pizza', 'Fresh paneer and vegetable pizza', 249, 'Pizza'),
(2, 'Veg Pizza', 'Fresh vegetable pizza', 199, 'Pizza')
ON DUPLICATE KEY UPDATE name=VALUES(name);
