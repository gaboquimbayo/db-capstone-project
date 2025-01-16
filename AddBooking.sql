DELIMITER \\
CREATE procedure AddBooking(IN BookingDate DATE, IN TableNumber INT, IN Order_ID INT, IN Staff_ID INT, IN Customer_ID INT)
BEGIN
INSERT INTO bookings (Date, TableNo, OrderID, StaffID, CustomerID) VALUES(BookingDate, TableNumber, Order_ID, Staff_ID, Customer_ID);
END \\

DELIMITER ;

CALL AddBooking('2022-12-30', 9, 15, 15, 15);