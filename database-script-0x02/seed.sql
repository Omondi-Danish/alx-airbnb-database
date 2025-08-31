-- Insert Users
INSERT INTO User (name, email, phone, password, role)
VALUES 
  ('Danish Omondi', 'danish@example.com', '0712345678', 'hashed_pw_1', 'host'),
  ('Bithia Nyambura', 'bithia@example.com', '0723456789', 'hashed_pw_2', 'guest'),
  ('Alex Mwangi', 'alex@example.com', '0734567890', 'hashed_pw_3', 'guest');

-- Insert Properties
INSERT INTO Property (title, description, location, price_per_night, host_id)
VALUES 
  ('Lakeview Cottage', 'Cozy cottage near Lake Victoria', 'Homa Bay', 4500.00, 1),
  ('Urban Studio', 'Modern studio apartment in Nairobi CBD', 'Nairobi', 6000.00, 1);

-- Insert Bookings
INSERT INTO Booking (user_id, property_id, start_date, end_date, status)
VALUES 
  (2, 1, '2025-09-10', '2025-09-12', 'confirmed'),
  (3, 2, '2025-09-15', '2025-09-18', 'pending');

-- Insert Payments
INSERT INTO Payment (booking_id, amount, method, status)
VALUES 
  (1, 9000.00, 'M-Pesa', 'paid'),
  (2, 18000.00, 'Card', 'pending');

-- Insert Reviews
INSERT INTO Review (user_id, property_id, rating, comment)
VALUES 
  (2, 1, 5, 'Amazing stay! Peaceful and clean.'),
  (3, 2, 4, 'Great location, but a bit noisy at night.');

-- Insert Amenities
INSERT INTO Amenity (name, description)
VALUES 
  ('WiFi', 'High-speed wireless internet'),
  ('Air Conditioning', 'Cooling system for hot days'),
  ('Kitchen', 'Fully equipped cooking area');

-- Link Amenities to Properties
INSERT INTO PropertyAmenity (property_id, amenity_id)
VALUES 
  (1, 1),
  (1, 3),
  (2, 1),
  (2, 2),
  (2, 3);
