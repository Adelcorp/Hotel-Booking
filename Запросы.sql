--Выбор гостей и их бронирований со общей стоимостью стоимостью более 1100$ + сортировка
SELECT first_name, last_name, booking.checkin_date, booking.checkout_date, SUM(booking.booking_amount) AS total_amount
FROM guest g
JOIN booking ON g.id = booking.guest_id
GROUP BY first_name, last_name, booking.checkin_date, booking.checkout_date
HAVING SUM(booking.booking_amount) > 1100
ORDER BY total_amount DESC;

--Вывести любого гостя с наибольшим числом заказанных допуслуг
SELECT first_name, last_name, (SELECT COUNT(*) FROM booking_addon ba WHERE ba.booking_id = b.id) AS addon_count FROM guest
JOIN booking b ON guest.id = b.guest_id
ORDER BY addon_count DESC
LIMIT 1;

--Вывести самую дорогую допуслугу и её стоимость
SELECT addon_name, price FROM addon
ORDER BY price DESC
LIMIT 1;

--Вывести сколько номеров находятся в каждом из статусов
SELECT status_name, COUNT(room.id) AS num_available_rooms FROM room_status rs
LEFT JOIN room ON rs.id = room.status_id
GROUP BY status_name;

--Вывести классы номеров и количество фич в каждом из них
SELECT class_name, COUNT(r_cf.feature_id) AS num_features
FROM room_class c
LEFT JOIN room_class_feature r_cf ON c.id = r_cf.room_class_id
GROUP BY c.class_name;

--Вывести общую стоимость всех бронирований для каждого гостя
SELECT first_name, last_name, SUM(b.booking_amount) AS total_booking_amount
FROM guest
JOIN booking b ON guest.id = b.guest_id
GROUP BY first_name, last_name;

--Вывести отсортированное количество номеров в каждом из классов
SELECT class_name, COUNT(room.id) AS num_rooms
FROM room_class c
LEFT JOIN room ON c.id = room.room_class_id
GROUP BY c.class_name
ORDER BY num_rooms DESC;

--Выбрать двух гостей с наибольшей общей стоимостью всех бронирований
SELECT first_name, last_name, SUM(b.booking_amount) AS total_booking_amount
FROM guest
JOIN booking b ON guest.id = b.guest_id
GROUP BY first_name, last_name
ORDER BY total_booking_amount DESC
LIMIT 2;

--Получить среднюю стоимость дополнительной услуги
SELECT AVG(price) AS avg_addon_price
FROM addon;

--Вывести наименьший и наибольший номер комнаты(номера) и их этажи
SELECT room_number, floor FROM room
WHERE room_number = (SELECT MIN(room_number) FROM room)
OR room_number = (SELECT MAX(room_number) FROM room);




