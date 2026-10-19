-- Auto-initialize all databases for Cab Booking Microservices
CREATE DATABASE IF NOT EXISTS cab_booking_auth;
CREATE DATABASE IF NOT EXISTS cab_booking_users;
CREATE DATABASE IF NOT EXISTS cab_booking_drivers;
CREATE DATABASE IF NOT EXISTS cab_booking_rides;
CREATE DATABASE IF NOT EXISTS cab_booking_locations;
CREATE DATABASE IF NOT EXISTS cab_booking_payment;
CREATE DATABASE IF NOT EXISTS cab_booking_rating;

-- Ensure root has remote access inside the Docker network
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'Sri@12345';
FLUSH PRIVILEGES;
