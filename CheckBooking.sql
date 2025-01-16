DELIMITER \\
CREATE PROCEDURE CheckBooking(IN BookingDate DATE, IN TableNumber INT)
BEGIN
DECLARE BookingStatus VARCHAR(20);
SELECT
CASE
WHEN 
EXISTS (SELECT 1 FROM bookings WHERE Date = BookingDate AND TableNo = TableNumber) 
THEN 'Booked'
ELSE 'Available' 
END
INTO BookingStatus;
SELECT BookingStatus AS TableStatus;
END \\

DELIMITER ;

CALL CheckBooking('2022-11-12', 3);