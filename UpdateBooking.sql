DELIMITER \\
CREATE procedure UpdateBooking (IN BookingDate DATE, IN Booking_ID INT)
BEGIN
UPDATE bookings SET Date=BookingDate
WHERE BookingID=Booking_ID;
END \\

DELIMITER ;

CALL UpdateBooking('2022-12-30', 30);