USE `hw03-rdb`;

-- 1.1 вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products;
SELECT * FROM products;

-- 1.2 вибрати тільки стовпчики name, phone з таблиці shippers,
SELECT name, phone FROM shippers;

-- 2.0 Напишіть SQL команду, за допомогою якої можна знайти середнє,
-- максимальне та мінімальне значення стовпчика price таблички products
SELECT AVG(price) AS average_price,
       MAX(price) AS max_price,
       MIN(price) AS min_price
FROM products;

-- 3.0 Напишіть SQL команду, за допомогою якої можна обрати унікальні значення колонок category_id та price таблиці products.
-- Оберіть порядок виведення на екран за спаданням значення price та виберіть тільки 10 рядків
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

-- 4.0 Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків),
-- які знаходиться в цінових межах від 20 до 100
SELECT COUNT(*) AS product_count
FROM products
WHERE price BETWEEN 20 AND 100;

-- 5.0 Напишіть SQL команду, за допомогою якої можна знайти кількість продуктів (рядків) та середню ціну (price)
-- у кожного постачальника (supplier_id)
SELECT supplier_id, COUNT(*) AS product_count, AVG(price) AS average_price
FROM products
GROUP BY supplier_id;