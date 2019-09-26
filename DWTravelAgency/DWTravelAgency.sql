DROP TABLE IF EXISTS TRIP;
DROP TABLE IF EXISTS DATE;
DROP TABLE IF EXISTS LOCATION;
DROP TABLE IF EXISTS TRANSPORT;
DROP TABLE IF EXISTS HOTEL;
DROP TABLE IF EXISTS TRIP_INFO;


CREATE TABLE TRIP_INFO (
	TripInfoID int IDENTITY(1,1) PRIMARY KEY,
	TripType varchar(50),
	TripNotes varchar(60)
);

CREATE TABLE HOTEL (
	HotelID int IDENTITY(1,1) PRIMARY KEY,
	HotelName varchar(40),
	HotelType varchar(40),
	InsertionDate date,
	ExpiredDate date
);

CREATE TABLE TRANSPORT (
	TransportID int IDENTITY(1,1) PRIMARY KEY,
	TransportType varchar(30),
	DiscountRange varchar(50)
);

CREATE TABLE LOCATION (
	LocationID int IDENTITY(1,1) PRIMARY KEY,
	City varchar(40),
	Country varchar(40) 
);

CREATE TABLE DATE (
	DateID int IDENTITY(1,1) PRIMARY KEY,
	Date date,
	Year int,
	Month varchar(20), 
	Season varchar(20), 
	DayOfWeek varchar(20), 
	Holiday varchar(40)
);

CREATE TABLE TRIP (
	TripID int IDENTITY(1,1) PRIMARY KEY,
	StartDateID int FOREIGN KEY REFERENCES DATE,
	FinishDateID int FOREIGN KEY REFERENCES DATE,
	StartingLocationID int FOREIGN KEY REFERENCES LOCATION,
	DestinationLocationID int FOREIGN KEY REFERENCES LOCATION,
	ArrivalTransportID int FOREIGN KEY REFERENCES TRANSPORT,
	DepartureTransportID int FOREIGN KEY REFERENCES TRANSPORT,
	HotelID int FOREIGN KEY REFERENCES HOTEL,
	TripInfoID int FOREIGN KEY REFERENCES TRIP_INFO,
	NumberOfParticipants int,
	Profit float,
	NumberOfPeopleInAgeRange1 int,
	NumberOfPeopleInAgeRange2 int,
	NumberOfPeopleInAgeRange3 int,
	NumberOfPeopleInAgeRange4 int,
	NumberOfPeopleInAgeRange5 int
);








