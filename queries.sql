/* Найти количество туров, проданных Ивановым. */

SELECT count(*)
FROM "ORDER"
         INNER JOIN Employee ON Employee.employee_id = "ORDER".employee_id AND Employee.surname_nm = 'Иванов';
