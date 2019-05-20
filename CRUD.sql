INSERT INTO CLIENT (name_nm,
                    patronymic_nm,
                    surname_nm,
                    birth_date_dt,
                    gender_code,
                    email_txt,
                    phone_number_no,
                    citizenship_txt)
VALUES ('Александр', 'Геннадьевич', 'Саковец', '1970-10-27', 0, 'alexkazan@rambler.ru', '+79172796690', 'Россия')
     , ('Андрей', 'Олегович', 'Степаненко', '1999-08-30', 0, 'ftvkyo@rambler.ru', '+79260920645', 'Россия')
     , ('Ирина', 'Владимировна', 'Шкаликова', '1999-01-10', 1, 'irishka@rambler.ru', '+79058903370', 'Израиль')

SELECT name_nm, surname_nm
FROM CLIENT
WHERE citizenship_txt = 'Россия';

UPDATE CLIENT
SET phone_number_no = '+79093072250'
WHERE client_id = '2';

DELETE
FROM CLIENT
WHERE citizenship_txt = 'Израиль';
