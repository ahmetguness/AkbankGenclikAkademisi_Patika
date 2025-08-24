-- dvdrental example queries - set 5
-- Save as: dvdrental_queries_set5.sql
-- Assumes PostgreSQL and the standard dvdrental schema (public)

-- 1) film tablosunda film ismi 'n' karakteri ile biten en uzun 5 filmi sıralayınız.
SELECT title, length
FROM public.film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- 2) film tablosunda film ismi 'n' karakteri ile biten en kısa 10 filmden (6-10. sıradakiler) 5 tanesini sıralayınız.
SELECT title, length
FROM public.film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5 LIMIT 5;

-- 3) customer tablosunda last_name sütununa göre azalan sıralamada store_id = 1 koşuluyla ilk 4 veriyi sıralayınız.
SELECT customer_id, first_name, last_name, store_id
FROM public.customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
