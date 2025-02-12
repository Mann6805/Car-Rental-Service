create database dbms;

use dbms;

CREATE TABLE USER (
    USER_ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(255) NOT NULL UNIQUE,
    LICENSE VARCHAR(20) NOT NULL UNIQUE,
    AADHAR_CARD VARCHAR(13) NOT NULL UNIQUE,
    PHONE_NUMBER VARCHAR(10) NOT NULL UNIQUE,
    EMAIL_ID VARCHAR(255) NOT NULL,
    AGE INT(4),
    PASSWORD varchar(10) NOT NULL
);

CREATE TABLE ADMIN (
    ADMIN_ID INT PRIMARY KEY AUTO_INCREMENT,
    USER_ID INT UNIQUE,	
    FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
);

INSERT INTO ADMIN (USER_ID)
VALUES (2);

select * from user;		

desc user;

CREATE TABLE VEHICLE (
    VEHICLE_ID INT PRIMARY KEY AUTO_INCREMENT,
    MODEL VARCHAR(255) NOT NULL,
    YEAR INT NOT NULL,
    LICENCE_PLATE_NUMBER VARCHAR(20) NOT NULL UNIQUE,
    BODY_TYPE VARCHAR(50) NOT NULL,
    FUEL_TYPE VARCHAR(50) NOT NULL,
    MILEAGE DECIMAL(8,2) NOT NULL,
    PUC VARCHAR(255) NOT NULL,
    INSURANCE VARCHAR(255) NOT NULL,
    PRICE DECIMAL(10,2) NOT NULL,
    AVAILABLE BOOLEAN NOT NULL,
    IMAGE VARCHAR(255) NOT NULL
);

CREATE TABLE VEHICLE_FEATURES(
	VEHICLE_ID INT PRIMARY KEY,
	FASTTAG BOOLEAN NOT NULL,
    SUNROOF BOOLEAN NOT NULL,
    AIRBAGS BOOLEAN NOT NULL,
    FOREIGN KEY (VEHICLE_ID) REFERENCES VEHICLE(VEHICLE_ID)
);


INSERT INTO VEHICLE (MODEL, YEAR, LICENCE_PLATE_NUMBER, BODY_TYPE, FUEL_TYPE, MILEAGE, PUC, INSURANCE, PRICE, AVAILABLE, IMAGE)
VALUES
    ('Toyota Corolla', 2018, 'ABC1234', 'sedan', 'petrol', 18.5, 'Valid', 'Valid', 4000, TRUE, 'https://images.unsplash.com/photo-1626072557464-90403d788e8d?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    ('Honda Civic', 2019, 'DEF5678', 'sedan', 'petrol', 17, 'Valid', 'Valid', 2500, TRUE, 'https://images.unsplash.com/photo-1594070319944-7c0cbebb6f58?q=80&w=2000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    ('Maruti Suzuki Swift', 2017, 'GHI9012', 'hatchback', 'petrol', 15, 'Valid', 'Valid', 2000, TRUE, 'https://images.unsplash.com/photo-1663852408695-f57f4d75a536?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    ('Kia Seltos', 2020, 'JKL3456', 'suv', 'petrol', 17, 'Valid', 'Valid', 2200, TRUE, 'https://images.unsplash.com/photo-1669971080123-4493adba7ba7?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
    ('Tata Nexon', 2019, 'MNO7890', 'suv', 'diesel', 16, 'Valid', 'Valid', 1700, TRUE, 'https://imgd.aeplcdn.com/664x374/n/cw/ec/141867/nexon-facelift-exterior-right-front-three-quarter-69.jpeg?isig=0&q=80'),
    ('Toyota Innova Crysta', 2016, 'PQR1234', 'suv', 'diesel', 14.5, 'Valid', 'Valid', 3000, TRUE, 'https://www.financialexpress.com/wp-content/uploads/2020/11/Toyota-Innova-Crysta-2020.jpg?w=1024'),
    ('Honda City', 2018, 'STU5678', 'sedan', 'petrol', 15.5, 'Valid', 'Valid', 2600, TRUE, 'https://imgd.aeplcdn.com/664x374/n/cw/ec/134287/city-exterior-right-front-three-quarter-74.jpeg?isig=0&q=80'),
    ('Maruti Suzuki Baleno', 2019, 'VWX9012', 'hatchback', 'petrol', 13.5, 'Valid', 'Valid', 1100, TRUE, 'https://images.news18.com/ibnlive/uploads/2022/02/maruti-suzuki-baleno-4-16456231404x3.jpg'),
    ('Kia Sonet', 2021, 'YZA3456', 'suv', 'diesel', 17.4, 'Valid', 'Valid', 2300, TRUE, 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Kia/Sonet/9783/1705036728978/front-left-side-47.jpg'),
    ('Tata Tiago', 2018, 'BCD7890', 'hatchback', 'petrol', 18.9, 'Valid', 'Valid', 1600, TRUE, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/2022_Tata_Tiago_XZA%2B_front_20230512.jpg/640px-2022_Tata_Tiago_XZA%2B_front_20230512.jpg'),
    ('Toyota Fortuner', 2019, 'EFG1234', 'suv', 'diesel', 16.8, 'Valid', 'Valid', 4500, TRUE, 'https://upload.wikimedia.org/wikipedia/commons/6/66/2015_Toyota_Fortuner_%28New_Zealand%29.jpg'),
    ('Honda Amaze', 2017, 'HIJ5678', 'sedan', 'diesel', 17, 'Valid', 'Valid', 2400, TRUE, 'https://www.team-bhp.com/forum/attachments/official-new-car-reviews/2399683d1672768519-2021-honda-amaze-facelift-close-look-amaze-vx-cvt-1.jpg'),
    ('Maruti Suzuki Vitara Brezza', 2020, 'KLM9012', 'suv', 'petrol', 14, 'Valid', 'Valid', 2000, TRUE, 'https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20220706025905_Brezza_1.jpg'),
    ('Kia Carnival', 2021, 'PQR3456', 'sedan', 'diesel', 16.6, 'Valid', 'Valid', 4000, TRUE, 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Kia/Carnival/7886/1698403628208/front-left-side-47.jpg'),
    ('Tata Harrier', 2020, 'STU7890', 'suv', 'diesel', 17.7, 'Valid', 'Valid', 2700, TRUE, 'https://d2m3nfprmhqjvd.cloudfront.net/blog/20230217180351/Harrier-red-1160x769.webp');

INSERT INTO VEHICLE_FEATURES (VEHICLE_ID, FASTTAG, SUNROOF, AIRBAGS) VALUES
    (1, TRUE, TRUE, TRUE),
    (2, TRUE, TRUE, TRUE),
    (3, TRUE, FALSE, TRUE),
    (4, TRUE, TRUE, TRUE),
    (5, TRUE, TRUE, TRUE),
    (6, TRUE, TRUE, TRUE),
    (7, TRUE, FALSE, TRUE),
    (8, TRUE, TRUE, TRUE),
    (9, TRUE, TRUE, TRUE),
    (10, TRUE, FALSE, TRUE),
    (11, TRUE, TRUE, TRUE),
    (12, TRUE, TRUE, TRUE),
    (13, TRUE, TRUE, TRUE),
    (14, TRUE, TRUE, TRUE),
    (15, TRUE, TRUE, TRUE);
    
select * from vehicle;

-- truncate table vehicle;
-- drop table vehicle; 

CREATE TABLE BOOKING(
    BOOKING_ID INT AUTO_INCREMENT PRIMARY KEY,
    VEHICLE_ID INT,
    USER_ID INT,
    RENTAL_START_DATETIME DATETIME NOT NULL,
    RENTAL_END_DATETIME DATETIME NOT NULL,
    RENT_COST DECIMAL(10,2) NOT NULL,
    DROP_LOCATION VARCHAR(100) NOT NULL,
    FOREIGN KEY (VEHICLE_ID) REFERENCES VEHICLE(VEHICLE_ID),
    FOREIGN KEY (USER_ID) REFERENCES USER(USER_ID)
);


desc booking;
SELECT * FROM BOOKING;
SELECT * FROM VEHICLE;
SELECT * FROM VEHICLE V JOIN VEHICLE_FEATURES VF ON V.VEHICLE_ID = VF.VEHICLE_ID WHERE V.VEHICLE_ID = 1