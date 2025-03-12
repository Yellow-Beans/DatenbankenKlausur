\! cls

-- Holzhammermethode, weil die Datenbank nur für die Klausur existiert.
DROP DATABASE IF EXISTS klausur;
CREATE DATABASE klausur;
USE klausur;

CREATE TABLE addressbook(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(45) NOT NULL, 
vorname VARCHAR(45) NOT NULL, 
plz INT NOT NULL, 
ort VARCHAR(45) NOT NULL
);

-- --------------------------------------

INSERT INTO addressbook 
(name, vorname, plz, ort) VALUES 
("Mueller", "Peter", 12991, "Berlin"), 
("Ay", "Yildiz", 63325, "Langen"), 
("Sommer", "Petra", 70137, "Stuttgart");

-- -----------------------------------
SELECT
name, vorname
FROM 
addressbook 
WHERE
vorname LIKE "Pet%";
