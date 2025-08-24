-- dvdrental example queries - set 4
-- Save as: dvdrental_queries_set4.sql
-- Assumes PostgreSQL and the standard dvdrental schema (public)

-- 1) film tablosunda replacement_cost sütunundaki birbirinden farklı değerleri sıralayınız.
SELECT DISTINCT replacement_cost
FROM public.film
ORDER BY replacement_cost;

-- 2) film tablosunda replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
SELECT COUNT(DISTINCT replacement_cost) AS distinct_replacement_cost_count
FROM public.film;

-- 3) film tablosunda film isimlerinde (title) kaç tanesi 'T' harfi ile başlar ve rating 'G'ye eşittir?
SELECT COUNT(*) AS film_count
FROM public.film
WHERE title LIKE 'T%' AND rating = 'G';

-- 4) country tablosunda ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
SELECT COUNT(*) AS country_5chars_count
FROM public.country
WHERE LENGTH(country) = 5;

-- 5) city tablosundaki şehir isimlerinin kaç tanesi 'R' veya 'r' karakteri ile biter?
SELECT COUNT(*) AS city_endswith_r_count
FROM public.city
WHERE city LIKE '%R' OR city LIKE '%r';
