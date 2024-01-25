Create Database ICSEHotelDB;
Use ICSEHotelDB;
 
CREATE TABLE customer(
id 			INT(15) 		PRIMARY KEY AUTO_INCREMENT,
name 			VARCHAR(15) 		NOT NULL,
surname 		VARCHAR(15)		NOT NULL,
second_surname  	VARCHAR(15),
birth			INT(15)			NOT NULL,
gender			ENUM("FEMALE","MEN")	NOT NULL,
Phone			INT(15)			NOT NULL,
DNI 			VARCHAR(15) 		NOT NULL  UNIQUE, 
address 		VARCHAR(100) 		NOT NULL,
postal_code     	INT(15)			NOT NULL,
parking			ENUM("YES","NO")	NOT NULL,
coments			VARCHAR(15),
type_of_bedrooms	ENUM("INDIVIDUAL","DOBLE","FAMILIAR")	NOT NULL,
n_of_room		ENUM("1.1","1.2","1.3","2.1","2.2","2.3") NOT NULL UNIQUE,
payment			ENUM("CASH","CREDITCARD")	NOT NULL,
day_of_enter 		INT(15)			NOT NULL,
day_of_exit		INT(15)			NOT NULL,
n_of_reservation	INT(15)			NOT NULL	
);