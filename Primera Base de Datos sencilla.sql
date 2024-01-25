
Create table actividad1(
id INT(15) PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(15) NOT NULL,
year INT(4) NOT NULL,
producer VARCHAR(15) NOT NULL,
sinopsis VARCHAR(15) NOT NULL,
rating ENUM("1", "2", "3") NOT NULL,
watched ENUM("YES", "NO") NOT NULL,
revenue INT(255) NOT NULL

);
INSERT INTO actividad1 (title, year, producer, sinopsis, rating, watched, revenue )
VALUES
("DF", 2423, "tD", "pt", "2", "YES", 287),
("rF", 2623, "hD", "lt", "5", "NO", 565),
("tF", 2723, "jD", "nt", "7", "YES", 865),
("DyF", 2823, "mD", "bt", "8", "NO", 344),
("Du", 2393, "sD", "rt", "9", "YES", 754);
