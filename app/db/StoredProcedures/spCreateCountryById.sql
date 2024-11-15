/*********************************************
-- Doel: Createn van een record in de tabel Country op
         basis van het Id
*******************************
-- Versie: 01
-- Datum 26-09-2024
-- Auteur: Dennis Oostrom
********************************************/

-- Selecteer de juiste databse voor je stored procedure
use `mvcframework-io-sd-2309a-startertmp`;

-- Verwijder de oude stored procedure
DROP PROCEDURE IF EXISTS spCreateCountryByID

-- Verander even tijdelijk de opdracht promt naar //
DELIMITER //

CREATE PROCEDURE spCreateCountryByID(
    IN Id          INT UNSIGNED,
    IN Name        VARCHAR(250),
    IN CapitalCity VARCHAR(250),
    IN Continent   VARCHAR(250),
    IN Population  INT UNSIGNED,
    IN Zipcode     VARCHAR(6)
)
BEGIN
     INSERT INTO Country AS COUN (Id, 
     Name,
    CapitalCity,
    Continent,
    Population,
    Zipcode)
    VALUES  (
     Name,
    CapitalCity,
    Continent,
    Population,
     Zipcode);

END //
DELIMITER ;

/*************** debug code stored procedure ***********

CALL spCreateCountryById();

******************************************************/