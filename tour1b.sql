update Tour
set price = price - 100
where price >= 100 and state in ('California', 'new york');

select distinct Guide.firstName, Guide.lastName
from Guide
natural join ReservedTour
natural join Tour
where tourName = 'Freedom Trail'
OR Title = 'Junior Guide';
 
SELECT 
    ReservedTour.TravelDate, 
    (Customer.FirstName || ' ' || Customer.LastName) AS fullName, 
    Customer.Age, 
    Tour.TourName,
    Tour.vehicleType
FROM Tour
JOIN ReservedTour ON Tour.TourID = ReservedTour.TourID
JOIN Customer ON ReservedTour.CustomerID = Customer.CustomerID
WHERE Customer.Age > 65 OR Tour.vehicleType = 'boat'
ORDER BY Tour.TourName;
    
SELECT DISTINCT Tour.tourName, Guide.FirstName, Guide.LastName
FROM ReservedTour
JOIN Tour ON Tour.tourID = ReservedTour.tourID
JOIN Guide ON Guide.guideID = ReservedTour.guideID
ORDER BY Tour.tourName, Guide.LastName, Guide.FirstName;

