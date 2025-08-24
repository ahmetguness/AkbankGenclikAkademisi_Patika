-- 1) Ortalama uzunluktan daha uzun olan film sayısı
SELECT COUNT(*) AS film_count_above_avg
FROM public.film
WHERE length > (SELECT AVG(length) FROM public.film);

-- 2) En yüksek rental_rate değerine sahip film sayısı
SELECT COUNT(*) AS film_count_highest_rental
FROM public.film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM public.film);

-- 3) En düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmler
SELECT *
FROM public.film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM public.film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM public.film);

-- 4) En fazla alışveriş yapan müşteriler (payment tablosu)
SELECT customer_id, COUNT(*) AS payment_count
FROM public.payment
GROUP BY customer_id
ORDER BY payment_count DESC;
