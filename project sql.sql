CREATE DATABASE flipmode_company;
USE flipmode_company;
CREATE TABLE test (
 test_column INT
);
ALTER TABLE test
ADD another_column VARCHAR(255);
DROP TABLE test;
CREATE TABLE rapgroup (
 id INT NOT NULL AUTO_INCREMENT,
 name VARCHAR (255) NOT NULL,
 PRIMARY KEY (id)
 );
 CREATE TABLE albums (
 id INT NOT NULL AUTO_INCREMENT,
 name VARCHAR(255) NOT NULL,
 release_year INT,
 rapgroups_id INT NOT NULL,
 PRIMARY KEY (id),
 FOREIGN KEY (rapgroups_id) REFERENCES rapgroup(id)
 
 
 
 

 
 INSERT INTO rapgroup (name)
 VALUES ('Snoop Dogg'), ('Ice Cube'), ('Dr. Dre'), ('TUPAC');
 
 
 SELECT * FROM rapgroup;
 
 INSERT INTO rapgroup (name)
 VALUES ('TUPAC');
 
 SELECT name from rapgroup;
 
 SELECT id AS 'ID', name AS 'Rapgroup Name'
 FROM rapgroup;
 
 SELECT * FROM rapgroup ORDER BY name;
 
 INSERT INTO albums (name, release_year, rapgroups_id)
 VALUES ('Dogg House', 1999, 1),
		('The Chronic', 2001, 3);
        
        SELECT * FROM albums;
        
UPDATE albums
SET release_year = 1993
WHERE id = 1;

SELECT * FROM albums
WHERE release_year < 2000;

SELECT * FROM albums
WHERE name LIKE '%on%';

SELECT * FROM rapgroup
JOIN albums ON rapgroup.id = albums.rapgroups_id;


