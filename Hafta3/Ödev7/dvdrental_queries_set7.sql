-- 1) film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating, COUNT(*) AS film_count
FROM public.film
GROUP BY rating
ORDER BY rating;

-- 2) film tablosunda replacement_cost sütununa göre gruplama, film sayısı 50’den fazla olanları göster.
SELECT replacement_cost, COUNT(*) AS film_count
FROM public.film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY film_count DESC;

-- 3) customer tablosunda store_id değerlerine karşılık gelen müşteri sayıları.
SELECT store_id, COUNT(*) AS customer_count
FROM public.customer
GROUP BY store_id;

-- 4) city tablosunda country_id’ye göre gruplayıp en fazla şehir sayısına sahip country_id ve şehir sayısını getiriniz.
SELECT country_id, COUNT(*) AS city_count
FROM public.city
GROUP BY country_id
ORDER BY city_count DESC
LIMIT 1;
