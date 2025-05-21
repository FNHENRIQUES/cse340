--Insert data to table
INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1M@n')

-- Update data to account
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 1;

-- Delete data from account
DELETE FROM account
WHERE account_id = 1;

-- Data for replacing Modify the "GM Hummer" record
UPDATE
    inventory
SET
  inv_description = REPLACE(inv_description, 'small interior', 'a huge interior')
WHERE
    inv_make = 'GM' AND
    inv_model = 'Hummer';

-- INNER classification Sport in inventory table
SELECT
    inv_make,
    inv_model,
    classification_name

FROM
    inventory
INNER JOIN  classification    
ON
    inventory.classification_id = classification.classification_id  
WHERE
    classification_name = 'Sport';

-- UPDATE inv_image and inv_thumbnail
UPDATE
    inventory   
SET
    inv_image = '/images/vehicles/hummer.jpg',
    inv_thumbnail = '/images/vehicles/hummer.jpg'
WHERE
    inv_make = 'GM' AND
    inv_model = 'Hummer';
