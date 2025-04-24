CREATE SEQUENCE guest_id_seq;

CREATE TABLE guest (
  id INT DEFAULT nextval('guest_id_seq') PRIMARY KEY,
  first_name VARCHAR(128),
  last_name VARCHAR(128),
  email_address VARCHAR(128),
  phone_number VARCHAR(20)
);

CREATE SEQUENCE payment_status_id_seq;

CREATE TABLE payment_status (
  id INT DEFAULT nextval('payment_status_id_seq') PRIMARY KEY,
  payment_status_name VARCHAR(50)
);

CREATE SEQUENCE booking_id_seq;

CREATE TABLE booking (
  id INT DEFAULT nextval('booking_id_seq') PRIMARY KEY,
  guest_id INT,
  payment_status_id INT,
  checkin_date DATE,
  checkout_date DATE,
  num_adults INT,
  num_children INT,
  booking_amount INT,
  CONSTRAINT fk_booking_guest FOREIGN KEY (guest_id) REFERENCES guest(id),
  CONSTRAINT fk_booking_paystatus FOREIGN KEY (payment_status_id) REFERENCES payment_status(id)
);

CREATE SEQUENCE addon_id_seq;

CREATE TABLE addon (
  id INT DEFAULT nextval('addon_id_seq') PRIMARY KEY,
  addon_name VARCHAR(200),
  price INT
);

CREATE TABLE booking_addon (
  booking_id INT,
  addon_id INT,
  CONSTRAINT fk_bkaddon_booking FOREIGN KEY (booking_id) REFERENCES booking(id),
  CONSTRAINT fk_bkaddon_addon FOREIGN KEY (addon_id) REFERENCES addon(id)
);

CREATE SEQUENCE room_class_id_seq;

CREATE TABLE room_class (
  id INT DEFAULT nextval('room_class_id_seq') PRIMARY KEY,
  class_name VARCHAR(100),
  base_price INT
);

CREATE SEQUENCE feature_id_seq;

CREATE TABLE feature (
  id INT DEFAULT nextval('feature_id_seq') PRIMARY KEY,
  feature_name VARCHAR(100)
);

CREATE TABLE room_class_feature (
  room_class_id INT,
  feature_id INT,
  CONSTRAINT fk_rmclsft_roomclass FOREIGN KEY (room_class_id) REFERENCES room_class (id),
  CONSTRAINT fk_rmclsft_feature FOREIGN KEY (feature_id) REFERENCES feature (id)
);

CREATE SEQUENCE room_status_id_seq;

CREATE TABLE room_status (
  id INT DEFAULT nextval('room_status_id_seq') PRIMARY KEY,
  status_name VARCHAR(200)
);

CREATE SEQUENCE room_id_seq;

CREATE TABLE room (
  id INT DEFAULT nextval('room_id_seq') PRIMARY KEY,
  room_class_id INT,
  status_id INT,
  floor INT,
  room_number INT,
  CONSTRAINT fk_room_roomclass FOREIGN KEY (room_class_id) REFERENCES room_class (id),
  CONSTRAINT fk_room_status FOREIGN KEY (status_id) REFERENCES room_status (id)
);

CREATE TABLE booking_room (
  booking_id INT,
  room_id INT,
  CONSTRAINT fk_bkroom_booking FOREIGN KEY (booking_id) REFERENCES booking(id),
  CONSTRAINT fk_bkroom_room FOREIGN KEY (room_id) REFERENCES room(id)
);