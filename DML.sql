INSERT INTO payment_status (payment_status_name) 
VALUES 
    ('Pending'),
    ('Paid'),
    ('Completed'),
    ('Refunded'),
    ('Unpaid'),
    ('Partial Payment'),
    ('Overdue'),
    ('Cancelled'),
    ('Processing'),
    ('Failed Payment'),
    ('Awaiting Approval'),
    ('On Hold');
	
INSERT INTO guest (first_name, last_name, email_address, phone_number) 
VALUES 
    ('Alice', 'Smith', 'alice.smith@example.com', '111-222-3333'),
    ('Bob', 'Johnson', 'bob.johnson@example.com', '444-555-6666'),
    ('Charlie', 'Brown', 'charlie.brown@example.com', '777-888-9999'),
    ('David', 'Miller', 'david.miller@example.com', '555-666-7777'),
    ('Emily', 'Young', 'emily.young@example.com', '888-999-0000'),
    ('Frank', 'Thomas', 'frank.thomas@example.com', '111-222-3333'),
    ('Grace', 'Harris', 'grace.harris@example.com', '444-555-6666'),
    ('Henry', 'Clark', 'henry.clark@example.com', '777-888-9999'),
    ('Ivy', 'Moore', 'ivy.moore@example.com', '123-456-7890'),
    ('Jack', 'Allen', 'jack.allen@example.com', '987-654-3210'),
    ('Karen', 'Perez', 'karen.perez@example.com', '555-777-9999'),
    ('Liam', 'Gonzalez', 'liam.gonzalez@example.com', '777-999-1111'),
    ('Mia', 'Lewis', 'mia.lewis@example.com', '333-444-5555'),
    ('Nathan', 'Taylor', 'nathan.taylor@example.com', '666-777-8888');

INSERT INTO booking (guest_id, payment_status_id, checkin_date, checkout_date, num_adults, num_children, booking_amount) 
VALUES 
    (1, 1, '2024-04-01', '2024-04-05', 2, 1, 500),
    (2, 2, '2024-04-02', '2024-04-03', 1, 0, 300),
    (3, 1, '2024-04-05', '2024-04-08', 2, 1, 700),
    (1, 3, '2024-04-10', '2024-04-15', 2, 2, 900),
    (4, 2, '2024-04-12', '2024-04-14', 3, 1, 600),
    (5, 1, '2024-04-20', '2024-04-25', 2, 0, 800),
    (2, 4, '2024-04-22', '2024-04-23', 1, 0, 400),
    (3, 3, '2024-04-25', '2024-04-28', 3, 1, 1000),
    (4, 5, '2024-04-28', '2024-05-01', 2, 0, 750),
    (5, 3, '2024-05-02', '2024-05-05', 1, 1, 600);
	
INSERT INTO addon (addon_name, price) 
VALUES 
    ('Breakfast', 20),
    ('Parking', 10),
    ('Spa Package', 50),
    ('Room Upgrade', 30),
    ('Airport Transfer', 25),
    ('Dinner Buffet', 35),
    ('Gym Access', 15),
    ('Late Checkout', 20),
    ('City Tour', 40),
    ('Welcome Gift', 5),
    ('Mini Bar Refill', 10),
    ('Snorkeling Trip', 45),
    ('Laundry Service', 15),
    ('In-Room Massage', 55),
    ('Movie Night Package', 30);
	
INSERT INTO booking_addon (booking_id, addon_id) 
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (1, 6),
    (2, 7),
    (3, 8),
    (4, 9),
    (5, 10),
    (1, 11),
    (2, 12),
    (3, 13),
    (4, 14),
    (5, 15);
	
INSERT INTO room_class (class_name, base_price) 
VALUES 
    ('Standard', 100),
    -- Add 14 more sample rows below with different data
    ('Deluxe', 150),
    ('Suite', 200),
    ('Penthouse', 300),
    ('Bungalow', 250),
    ('Chalet', 180),
    ('Cabin', 120),
    ('Villa', 220),
    ('Loft', 170),
    ('Manor', 280),
    ('Cottage', 160),
    ('Apartment', 130),
    ('Townhouse', 190),
    ('Treehouse', 210),
    ('Beach Hut', 140);
	
INSERT INTO feature (feature_name) 
VALUES 
    ('WiFi'),
    ('Swimming Pool'),
    ('Gym'),
    ('Spa'),
    ('Restaurant'),
    ('Bar'),
    ('Parking'),
    ('Airport Shuttle'),
    ('Business Center'),
    ('Concierge Service'),
    ('Jacuzzi'),
    ('Tennis Court'),
    ('Room Service'),
    ('Fitness Center'),
    ('Sauna');
	
INSERT INTO room_class_feature (room_class_id, feature_id) 
VALUES 
    (1, 1),
    (2, 3),
    (3, 5),
    (4, 7),
    (5, 9),
    (1, 2),
    (3, 4),
    (5, 6),
    (2, 8),
    (4, 10),
    (1, 11),
    (3, 13),
    (5, 15),
    (2, 12),
    (4, 14);
	
INSERT INTO room_status (status_name) 
VALUES 
    ('Available'),
    ('Occupied'),
    ('Under Maintenance'),
    ('Reserved'),
    ('Cleaning in Progress'),
    ('Out of Service'),
    ('Ready for Check-In'),
    ('Needs Inspection'),
    ('Blocked'),
    ('Vacant'),
    ('Booked'),
    ('Out of Order'),
    ('Awaiting Cleaning'),
    ('Awaiting Repair'),
    ('Checked Out');
	
INSERT INTO room (room_class_id, status_id, floor, room_number) 
VALUES 
    (1, 1, 1, 101),
    (2, 2, 2, 201),
    (3, 3, 1, 102),
    (4, 4, 3, 301),
    (5, 5, 2, 202),
    (1, 6, 1, 103),
    (2, 7, 3, 302),
    (3, 8, 2, 203),
    (4, 9, 1, 104),
    (5, 10, 3, 303),
    (1, 11, 2, 204),
    (2, 12, 1, 105),
    (3, 13, 3, 304),
    (4, 14, 2, 205),
    (5, 15, 1, 106);
	
INSERT INTO booking_room (booking_id, room_id) 
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (1, 6),
    (2, 7),
    (3, 8),
    (4, 9),
    (5, 10),
    (1, 11),
    (2, 12),
    (3, 13),
    (4, 14),
    (5, 15);
	
INSERT INTO addon (addon_name, price) 
VALUES
    ('Breakfast', 10),
    -- Добавьте еще 14 строк ниже с разными данными
    ('Gym Access', 20),
    ('Spa Package', 50),
    ('Airport Shuttle', 30),
    ('Room Upgrade', 40),
    ('Parking', 10),
    ('Dinner Buffet', 25),
    ('Laundry Service', 15),
    ('Concierge Service', 20),
    ('WiFi', 5),
    ('Late Checkout', 10),
    ('Pool Access', 30),
    ('Business Center', 15),
    ('Massage Therapy', 35),
    ('Room Service', 20);
	
INSERT INTO room_status (status_name) 
VALUES
    ('Ready'),
    ('Maintenance'),
    ('Occupied'),
    ('Cleaning'),
    ('Vacant'),
    ('Reserved'),
    ('Out of Order'),
    ('Repair'),
    ('Available'),
    ('Booked'),
    ('Under Inspection'),
    ('Blocked'),
    ('Unavailable'),
    ('Checked Out'),
    ('Awaiting Cleaning');