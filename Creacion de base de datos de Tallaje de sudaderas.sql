Create Database actividad4;
Use acitividad4;
 
CREATE TABLE students(
id 		INT(15) 	PRIMARY KEY AUTO_INCREMENT,
name 		VARCHAR(15) 	NOT NULL,
surname 	VARCHAR(15)	NOT NULL,
second_surname  VARCHAR(15),
DNI 		VARCHAR(15) 	NOT NULL  UNIQUE,
email 		VARCHAR(100) 	NOT NULL,
size            ENUM("S","M","L","XL","XXL")    NOT NULL   DEFAULT 'L' 
);

INSERT INTO students (name, surname, second_surname, DNI, email, size )
Values ("Álvaro", "Gómez", "Delgado", "4324254T", "alvarogt@gmail.com", "XL"),
("Diego", "Pastrana", "Monzon", "54238594Z", "pastrana@gmail.com", "L"),
("Carolina", "Hernandez", "Rodriguez", "3527354B", "caro@gmail.com", "M"),
("Andrea LI", "Rodriguez", "Garcia", "9567359Q", "Andrea@gmail.com", "S");

INSERT INTO students (name, surname, second_surname, DNI, email)
Values("Pablo", "Monzon", "Santana", "3737474R", "pablotuy@gmail.com");





    
