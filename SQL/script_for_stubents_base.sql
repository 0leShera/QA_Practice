/* Вывести все поля и все строки. */
SELECT *
FROM students;

/* Вывести всех студентов в таблице. */
SELECT concat(id, ': ', name) AS students
FROM students;

/* Вывести только Id пользователей. */
SELECT id
FROM students;

/* Вывести только имя пользователей. */
SELECT name
FROM students;

/* Вывести только email пользователей. */
SELECT email
FROM students;

/* Вывести имя и email пользователей. */
SELECT name, email
FROM students;

/* Вывести id, имя, email и дату создания пользователей. */
SELECT id, name, email, created_on AS date_of_creation
FROM students;

/* Вывести пользователей где password 12333. */
SELECT id, email, password
FROM students
WHERE password = '12333';
/* Оставила только поля id и email для идентификации пользователя, 
 * вывести достаточную информацию для идентификации пользователя */

/* Вывести пользователей которые были созданы 2021-03-26 00:00:00. */
SELECT id, email, created_on
FROM students
WHERE created_on = '2021-03-26 00:00:00';

/* Вывести пользователей где в имени есть слово Анна. */
SELECT id, email, name
FROM students
WHERE name LIKE '%Anna%';
/* Не указано где должго быть слово, оно может быть и в середине, поэтому %Anna%. */

/* Вывести пользователей где в имени в конце есть 8. */
SELECT id, email, name
FROM students
WHERE name LIKE '%8';

/* Вывести пользователей где в имени в есть буква а. */
SELECT id, email, name
FROM students
WHERE name LIKE '%a%';

/* Вывести пользователей которые были созданы 2021-07-12 00:00:00. */
SELECT id, email, created_on
FROM students
WHERE created_on = '2021-07-12 00:00:00';

/* Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313. */
SELECT id, email, password, created_on
FROM students
WHERE created_on = '2021-07-12 00:00:00' AND password = '1m313';

/* Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey. */
SELECT id, email, name, created_on
FROM students
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%Andrey%';

/* Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8. */
SELECT id, email, name, created_on
FROM students
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%8%';

/* Вывести пользователя у которых id равен 110. */
SELECT id, email
FROM students
WHERE id = '110';
-- Таких пользователей нет.

/* Вывести пользователя у которых id равен 153. */
SELECT id, email
FROM students
WHERE id = '153';

/* Вывести пользователя у которых id больше 140. */
SELECT id, email
FROM students
WHERE id > '140';

/* Вывести пользователя у которых id меньше 130. */
SELECT id, email
FROM students
WHERE id < '130';

/* Вывести пользователя у которых id меньше 127 или больше 188. */
SELECT id, email
FROM students
WHERE id < '127' OR id > '188';

/* Вывести пользователя у которых id меньше либо равно 137. */
SELECT id, email
FROM students
WHERE id <= '137';

/* Вывести пользователя у которых id больше либо равно 137. */
SELECT id, email
FROM students
WHERE id >= '137';

/* Вывести пользователя у которых id больше 180 но меньше 190. */
SELECT id, email
FROM students
WHERE id BETWEEN '181' AND '189';
-- 181 и 189 так как написано именно больше и меньше, т.е. сами 180 и 190 не входят.

/* Вывести пользователя у которых id между 180 и 190. */
SELECT id, email
FROM students
-- WHERE id BETWEEN '181' AND '189';
/* Или так */
WHERE id < '190' AND id > '180';

/* Вывести пользователей где password равен 12333, 1m313, 123313. */
SELECT id, email, password
FROM students
WHERE password IN ('12333', '1m313', '123313');
-- WHERE password = '12333' OR password = '1m313' OR password = '123313'; /* Long version */

/* Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00. */
SELECT id, email, created_on
FROM students
WHERE created_on IN ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');

/* Вывести минимальный id. */
SELECT MIN(id) as min_id
FROM students;

/* Вывести максимальный id. */
SELECT MAX(id) as max_id
FROM students;

/* Вывести количество пользователей. */
SELECT COUNT(id) as count_users
FROM students;
/* Считаем по айди так, как это уникальный показатнль.
 * Но можно и так:  */
SELECT COUNT(distinct email) as count_users
FROM students;

/* Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля. */
SELECT id, name, created_on
FROM students
ORDER by created_on;

/* Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля. */
SELECT id, name, created_on
FROM students
ORDER by created_on DESC;

