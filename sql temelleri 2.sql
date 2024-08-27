--film tablosunda bulunan ve film ismi (title) 'n' karakteri 
--ile biten en uzun (length) 5 filmi sıralayınız.

SELECT title FROM film
WHERE title LIKE '%n'
ORDER BY LENGTH 
LIMIT 5;

--film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa 
--(length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.

select title, length from film
where title like '%n'
and length in (6, 7, 8, 9, 10)
order by length asc
limit 5;

--customer tablosunda bulunan last_name sütununa göre azalan 
--yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.

select * from customer 
where store_id =  1
order by last_name desc
limit 4;

--film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?

select AVG(rental_rate) from film;


--film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?

select COUNT(*) from film
where title like 'C%';

--film tablosunda bulunan filmlerden rental_rate değeri 
--0.99 a eşit olan en uzun (length) film kaç dakikadır?

select MAX(length) from film
where rental_rate = 0.99;


--film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük 
--olanlarına ait kaç farklı replacement_cost değeri vardır?

select COUNT(DISTINCT replacement_cost) from film
where length > 150;


SELECT rating, COUNT(*)
FROM film
GROUP BY rating;

SELECT replacement_cost, COUNT(*)
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

SELECT store_id, COUNT(*)
FROM customer
GROUP BY store_id;

SELECT country_id, COUNT(*)
FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC
LIMIT 1;



