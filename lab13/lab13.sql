.read data.sql




CREATE TABLE average_prices AS
  
SELECT category, AVG(MSRP) AS average_price FROM products GROUP BY category;




CREATE TABLE lowest_prices AS
  
SELECT store, item, MIN(price) FROM inventory GROUP BY item;


CREATE TABLE best_deal AS
SELECT name, MIN(MSRP/rating) FROM products GROUP BY category;




CREATE TABLE shopping_list AS
  
SELECT a.item, b.store FROM lowest_prices AS a, best_deal AS b WHERE a.item = b.name;




CREATE TABLE total_bandwidth AS
  
SELECT SUM(b.Mbs) FROM shopping_list AS a, stores AS b WHERE a.store = b.store;

