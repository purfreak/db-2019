INSERT INTO CLIENT (name_nm, patronymic_nm, surname_nm, birth_date_dt, gender_code, email_txt, phone_number_no,
                    citizenship_txt)
VALUES ('Ирина', 'Александровна', 'Маринадова', '1992-03-29', 1, 'irishka@gmail.com', '+79058892250', 'Россия'),
       ('Александр', 'Васильевич', 'Парфенов', '1969-05-20', 0, 'alexparf@rambler.ru', '+79032046678', 'Россия'),
       ('Марк', 'Романович', 'Ширяев', '1985-03-18', 0, 'arrgh@ya.ru', '+79093075568', 'Россия'),
       ('Альберт', 'Григорьевич', 'Молодцов', '1998-07-29', 0, 'albmol@gmail.com', '+79058893325', 'Россия'),
       ('Камилла', 'Равилевна', 'Давлетшина', '1999-09-10', 1, 'davletshina@phystech.edu', '+79179035579', 'Россия'),
       ('Андрей', 'Олегович', 'Степаненко', '1999-08-30', 0, 'ftvkyo@gmail.com', '+79260920645', 'Россия');

INSERT INTO PASSPORT (client_id, passport_number_no, name_en_nm, surname_en_nm, issue_date_dt, expiry_date_dt)
VALUES (1, '71 1809485', 'Irina', 'Marinadova', '2005-07-10', '2015-07-10'),
       (2, '81 3908358', 'Alexandr', 'Parfenov', '2007-05-19', '2017-05-19'),
       (3, '71 9348596', 'Mark', 'Shiryaev', '2018-06-20', '2023-06-20'),
       (4, '91 3258050', 'Albert', 'Molodcov', '2019-03-17', '2029-03-17'),
       (5, '68 0345032', 'Kamilla', 'Davletshina', '2018-09-19', '2023-09-19'),
       (6, '12 0432545', 'Andrey', 'Stepanenko', '2017-05-28', '2022-05-28');

INSERT INTO VISA (passport_id, issue_date_dt, expiry_date_dt, country_nm)
VALUES (3, '2018-09-18', '2018-10-18', 'EU'),
       (4, '2017-12-27', '2020-12-27', 'America'),
       (2, '2018-04-15', '2018-10-15', 'EU'),
       (4, '2019-01-04', '2019-07-04', 'EU');

INSERT INTO EMPLOYEE (position_title, name_nm, patronymic_nm, surname_nm, email_txt, phone_number_no, salary_amt)
VALUES ('Менеджер', 'Иван', 'Иванович', 'Иванов', 'ivanoriginal@gmail.com', '+79189048824', 45000),
       ('Директор', 'Наталия', 'Александровна', 'Саковец', 'tyrefrtter@gmail.com', '+79093072250', 90000),
       ('Консультант', 'Аркадий', 'Александрович', 'Боков', 'bokov@yandex.ru', '+79046624450', 40000),
       ('Консультант', 'Арина', 'Александровна', 'Саковец', 'ghosthunter@gmail.com', '+78092238850', 45000);

INSERT INTO TOUR_OPERATOR (name_nm, web_site_url, main_address_txt, email_txt, phone_number_no)
VALUES ('Пегас', 'pegast.com', 'г. Москва, улица Новодачная, дом 7, офис 215', 'main_pegast@gmail.com', '+79046690450'),
       ('Южный крест', 'south-tours.ru', 'г. Москва, улица Маросейка, дом 23, офис 10', 'south-tours@yandex.ru',
        '+79049484450'),
       ('Тез тур', 'teztour.ru', 'г. Москва, улица Беломорская, дом 5', 'teztour@gmail.com', '+79049484450'),
       ('Анекс тур', 'anextour.com', 'г. Москва, улица Марийская, дом 5, строение 7', 'anextour@gmail.com',
        '+79044624450');

INSERT INTO CITY (city_name_nm, country_name_nm)
VALUES ('Барселона', 'Испания'),
       ('Мадрид', 'Испания'),
       ('Милан', 'Италия'),
       ('Рим', 'Италия'),
       ('Жирона', 'Испания'),
       ('Москва', 'Россия');

INSERT INTO FLIGHT (flight_number_no, departure_date_dttm, departure_time_dttm, departure_city_id, arrival_date_dttm,
                    arrival_time_dttm, arrival_city_id,
                    flight_class_cd)
VALUES ('SU 7984', '2019-06-01', '12:48', 1, '2019-06-01', '16:48', 6, 'Эконом'),
       ('SU 7984', '2019-06-01', '12:48', 1, '2019-06-01', '16:48', 6, 'Бизнес'),
       ('SU 7984', '2019-06-07', '12:48', 6, '2019-06-07', '16:48', 1, 'Эконом'),
       ('SU 3567', '2019-06-12', '14:50', 6, '2019-06-28', '18:50', 2, 'Эконом'),
       ('SU 7086', '2019-06-05', '06:30', 2, '2019-06-15', '10:30', 6, 'Эконом');

INSERT INTO TRANSPORTATION (tour_operator_id, flight_to_id, flight_from_id)
VALUES (4, 1, 3),
       (4, 5, 4),
       (2, 2, 3);

INSERT INTO HOTEL (name_nm, city_id, address_txt, hotel_class_code)
VALUES ('Safestay Barcelona Passeig de Gràcia', 1, 'Passeig de Gràcia, 33, 08007 Barcelona', '4 stars'),
       ('Safestay Madrid', 2, 'Calle de Sagasta, 22, 28004 Madrid', '3 stars'),
       ('Loreto Elite Milano', 3, 'Via Pietro Marocco, 11, 20127 Milano MI', '3 stars'),
       ('Hotel Acropoli', 4, 'Via Principe Amedeo, 63/67, 00185 Roma RM', '4 stars'),
       ('Hotels Ultonia Girona', 5, 'Gran Via de Jaume I, 22, 17001 Girona', '2 stars'),
       ('Hotel Ibis Budget Girona Costa Brava', 6, 'Carrer de Francesc Ferrer i Gironès, 18, 17007 Girona', '5 stars');

INSERT INTO ACCOMMODATION (tour_operator_id, hotel_id, nutrition_type_cd, room_type_cd, date_from_dt, date_to_dt)
VALUES (1, 4, '4 times', 'lux', '2019-06-01', '2019-06-07'),
       (2, 2, '3 times', 'two-seater', '2019-06-01', '2019-06-07'),
       (3, 6, 'breakfast', 'two-seater', '2019-06-05', '2019-06-12'),
       (4, 1, 'breakfast', 'single', '2019-06-05', '2019-06-12'),
       (4, 3, 'without', 'three-seater', '2019-08-09', '2019-10-09'),
       (2, 3, 'without', 'single', '2020-08-09', '2020-10-09');

INSERT INTO TOUR (accommodation_id, transportation_id, price_per_person)
VALUES (1, 1, 90000),
       (2, 2, 50000);

INSERT INTO "ORDER" (tour_id, payment_date_dt, buyer_id, employee_id)
VALUES (2, '2019-05-19', 2, 3),
       (2, '2019-05-22', 4, 1);

INSERT INTO ORDER_X_CLIENT (order_id, client_id)
VALUES (1, 1),
       (1, 2),
       (2, 4),
       (2, 3);
