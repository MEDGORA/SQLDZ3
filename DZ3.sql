# 1. Создание БД
CREATE DATABASE IF NOT EXISTS lesson_3; 

# 2. Подключение к БД
USE lesson_3;

# 3. Создание таблицы 
DROP TABLE IF EXISTS staff;
CREATE TABLE staff
(
	id INT PRIMARY KEY AUTO_INCREMENT, 
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    post VARCHAR(45),
    seniority INT,
    salary DECIMAL(8,2),
    age INT
);

INSERT INTO staff (firstname, lastname, post, seniority, salary, age)
VALUES
 ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
 ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
 ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
 ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
 ('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
 ('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
 ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
 ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
 ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
 ('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
 ('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
 ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
 
SELECT * FROM staff;

-- Задание 1
SELECT *
FROM staff
ORDER BY salary; 

SELECT *
FROM staff
ORDER BY salary DESC; 

-- Задание 2
SELECT salary
FROM staff
ORDER BY salary DESC
LIMIT 5; 

-- Задание 3
SELECT post, 
	SUM(salary) as SUM
FROM staff
GROUP BY post;

-- Задание 4
SELECT COUNT(post)
FROM staff
WHERE age < 50 AND age > 23 AND post = 'Рабочий';

-- Задание 5
SELECT COUNT(DISTINCT post) AS Специальности
FROM staff;

-- Задание 6
SELECT DISTINCT post
FROM staff
GROUP BY post
HAVING ROUND(AVG(age),2) < 30;
	


