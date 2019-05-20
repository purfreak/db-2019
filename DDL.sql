DROP TABLE IF EXISTS CLIENT CASCADE;
DROP TABLE IF EXISTS PASSPORT CASCADE;
DROP TABLE IF EXISTS VISA CASCADE;
DROP TABLE IF EXISTS EMPLOYEE CASCADE;
DROP TABLE IF EXISTS TOUR_OPERATOR CASCADE;
DROP TABLE IF EXISTS FLIGHT CASCADE;
DROP TABLE IF EXISTS TRANSPORTATION CASCADE;
DROP TABLE IF EXISTS CITY CASCADE;
DROP TABLE IF EXISTS HOTEL CASCADE;
DROP TABLE IF EXISTS ACCOMMODATION CASCADE;
DROP TABLE IF EXISTS TOUR CASCADE;
DROP TABLE IF EXISTS "ORDER" CASCADE;
DROP TABLE IF EXISTS ORDER_X_CLIENT CASCADE;

CREATE TABLE IF NOT EXISTS CLIENT
(
    client_id       serial PRIMARY KEY,
    name_nm         varchar(30) NOT NULL,
    patronymic_nm   varchar(30),
    surname_nm      varchar(30) NOT NULL,
    birth_date_dt   date        NOT NULL,
    gender_code     int         NOT NULL,
    email_txt       varchar(50) CHECK (email_txt ~ '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
    phone_number_no varchar(30) CHECK (phone_number_no ~ '^(\s*)?(\+)?([-():=+]?\d[-():=+]?){10,14}(\s*)?$'),
    citizenship_txt varchar(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS PASSPORT
(
    passport_id        serial PRIMARY KEY,
    client_id          serial REFERENCES CLIENT (client_id),
    passport_number_no varchar(30) NOT NULL,
    name_en_nm         varchar(30) NOT NULL,
    surname_en_nm      varchar(30) NOT NULL,
    issue_date_dt      date        NOT NULL,
    expiry_date_dt     date        NOT NULL
);

CREATE TABLE IF NOT EXISTS VISA
(
    visa_id        serial PRIMARY KEY,
    passport_id    serial REFERENCES PASSPORT (passport_id),
    issue_date_dt  date        NOT NULL,
    expiry_date_dt date        NOT NULL,
    country_nm     varchar(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS EMPLOYEE
(
    employee_id     serial PRIMARY KEY,
    position_title  varchar(30) NOT NULL,
    name_nm         varchar(30) NOT NULL,
    patronymic_nm   varchar(30),
    surname_nm      varchar(30) NOT NULL,
    email_txt       varchar(50) CHECK (email_txt ~ '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
    phone_number_no varchar(30) CHECK (phone_number_no ~ '^(\s*)?(\+)?([-():=+]?\d[-():=+]?){10,14}(\s*)?$'),
    salary_amt      varchar(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS TOUR_OPERATOR
(
    tour_operator_id serial PRIMARY KEY,
    name_nm          varchar(30) NOT NULL,
    web_site_url     varchar(50),
    main_address_txt varchar(50) NOT NULL,
    email_txt        varchar(50) CHECK (email_txt ~ '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$'),
    phone_number_no  varchar(30) CHECK (phone_number_no ~ '^(\s*)?(\+)?([-():=+]?\d[-():=+]?){10,14}(\s*)?$')
);

CREATE TABLE IF NOT EXISTS CITY
(
    city_id         serial PRIMARY KEY,
    city_name_nm    varchar(30) NOT NULL,
    country_name_nm varchar(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS FLIGHT
(
    flight_id           serial PRIMARY KEY,
    flight_number_no    varchar(30) NOT NULL,
    departure_date_dttm date        NOT NULL,
    departure_time_dttm varchar(5)  NOT NULL,
    departure_city_id   serial REFERENCES CITY (city_id),
    arrival_date_dttm   date        NOT NULL,
    arrival_time_dttm   varchar(5)  NOT NULL,
    arrival_city_id     serial REFERENCES CITY (city_id),
    flight_class_cd     varchar(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS TRANSPORTATION
(
    transportation_id serial PRIMARY KEY,
    tour_operator_id  serial REFERENCES TOUR_OPERATOR (tour_operator_id),
    flight_to_id      serial REFERENCES FLIGHT (flight_id),
    flight_from_id    serial REFERENCES FLIGHT (flight_id)
);

CREATE TABLE IF NOT EXISTS HOTEL
(
    hotel_id         serial PRIMARY KEY,
    name_nm          varchar(30) NOT NULL,
    city_id          serial REFERENCES CITY (city_id),
    address_txt      varchar(50) NOT NULL,
    hotel_class_code varchar(30) NOT NULL
);
CREATE TABLE IF NOT EXISTS ACCOMMODATION
(
    accommodation_id  serial PRIMARY KEY,
    tour_operator_id  serial REFERENCES TOUR_OPERATOR (tour_operator_id),
    hotel_id          serial REFERENCES HOTEL (hotel_id),
    nutrition_type_cd varchar(30) NOT NULL,
    room_type_cd      varchar(30) NOT NULL,
    date_from_dt      varchar(30) NOT NULL,
    date_to_dt        varchar(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS TOUR
(
    tour_id           serial PRIMARY KEY,
    accommodation_id  serial REFERENCES ACCOMMODATION (accommodation_id),
    transportation_id serial REFERENCES TRANSPORTATION (transportation_id),
    price_per_person  real NOT NULL
);

CREATE TABLE IF NOT EXISTS "ORDER"
(
    order_id        int PRIMARY KEY,
    tour_id         serial REFERENCES TOUR (tour_id),
    payment_date_dt date NOT NULL,
    buyer_id        serial REFERENCES CLIENT (client_id),
    employee_id     serial REFERENCES EMPLOYEE (employee_id)
);

CREATE TABLE IF NOT EXISTS ORDER_X_CLIENT
(
    order_id  serial PRIMARY KEY REFERENCES "ORDER" (order_id),
    client_id serial PRIMARY KEY REFERENCES CLIENT (client_id)
);
