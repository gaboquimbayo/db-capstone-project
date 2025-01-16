DELIMITER \\
CREATE procedure CancelBooking (IN Booking_ID INT)
BEGIN
DELETE FROM bookings
WHERE BookingID=Booking_ID;
END \\

DELIMITER ;

CALL CancelBooking(30);