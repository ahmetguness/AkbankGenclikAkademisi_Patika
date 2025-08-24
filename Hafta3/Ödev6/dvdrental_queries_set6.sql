-- 1) film tablosunda rental_rate sütunundaki değerlerin ortalaması nedir?
SELECT AVG(rental_rate) AS avg_rental_rate
FROM public.film;

-- 2) film tablosunda kaç film 'C' karakteri ile başlar?
SELECT COUNT(*) AS films_starting_with_c
FROM public.film
WHERE title LIKE 'C%';

-- 3) rental_rate = 0.99 olan en uzun filmin uzunluğu (dakika).
SELECT MAX(length) AS max_length_with_rental_099
FROM public.film
WHERE rental_rate = 0.99;

-- 4) uzunluğu 150 dakikadan büyük filmlerde kaç farklı replacement_cost vardır?
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_costs
FROM public.film
WHERE length > 150;
