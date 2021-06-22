--#1 
-- SELECT * FROM kivano INNER JOIN sulpak ON kivano.price = sulpak.price;

--#2 
-- SELECT product_name, product_name
-- FROM sulpak
-- WHERE product_name in (SELECT product_name
-- FROM kivano
-- WHERE product_name = 'Iphone 12');

-- SELECT * FROM kivano INNER JOIN sulpak ON kivano = sulpak WHERE product_name LIKE 'Iphone %';

--#3
-- SELECT product_name, product_name FROM kivano INNER JOIN sulpak ON kivano.produser_id = sulpak.produser_id WHERE category_id = 2;

--#4
-- SELECT *
-- FROM produsers
-- WHERE produser_country = 'China';

--#6
-- SELECT kivano.* FROM kivano LEFT JOIN sulpak ON kivano != sulpak;

--#7 
-- SELECT product_name FROM sulpak WHERE product_name LIKE '%Samsung%' OR product_name LIKE '%Xiaomi%'


--#8 
-- SELECT kivano.* FROM kivano LEFT JOIN sulpak ON kivano = sulpak;

--#9
-- SELECT product_name FROM kivano WHERE product_name LIKE '%Xiaomi%' AND product_name LIKE '%k%' OR product_name LIKE '%Huawei%' AND product_name LIKE '%k%';

--#10

-- UPDATE produsers
-- SET produser_company = 'Apple', produser_country = 'kyrgyzstan'
-- WHERE produser_id = (SELECT MAX(produser_id) FROM produsers)

--#11
-- SELECT kivano.product_name,kivano.price
-- FROM kivano
-- LEFT JOIN sulpak
-- ON kivano = sulpak AND kivano != sulpak

--#12
-- SELECT produser_company FROM produsers WHERE produser_id = 
-- (SELECT MAX(produser_id) FROM produsers WHERE produser_country = 'Japan')

--#13
-- SELECT price + 1000 FROM sulpak;

--№15
-- SELECT MIN(price) FROM sulpak;
-- SELECT MIN(price) FROM kivano;

--#16

-- DELETE FROM sulpak WHERE product_name = 'NULL';
-- DELETE FROM kivano WHERE product_name = 'NULL';


--#19
-- SELECT product_name, price FROM kivano WHERE category_id < 16;

--#21
-- SELECT product_name,price FROM sulpak WHERE price > (SELECT COUNT(price) FROM sulpak) / 100;

--#22
-- SELECT product_name,price FROM sulpak WHERE price > (SELECT COUNT(price) FROM kivano) / 100;

--#23
-- SELECT product_name FROM sulpak WHERE item_id = (SELECT MAX(item_id) FROM sulpak) / 2;

--#24
-- UPDATE produsers
-- SET produser_country = 'South Korea'
-- WHERE produser_country = 'Korea' AND produser_company = 'Asus';

--#25
-- UPDATE produsers
-- SET produser_company = 'Microsoft'
-- WHERE produser_company = 'Nokia' AND produser_country = 'USA'
