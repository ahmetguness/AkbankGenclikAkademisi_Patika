-- 1) film: replacement_cost 12.99 ile 16.99 arasındaki (BETWEEN ... AND) filmleri tüm sütunlarıyla getir.
SELECT *
FROM public.film
WHERE replacement_cost BETWEEN 12.99 AND 16.99
ORDER BY replacement_cost, title;

-- 2) actor: first_name 'Penelope', 'Nick' veya 'Ed' olanların first_name ve last_name sütunlarını getir (IN kullan).
SELECT first_name, last_name
FROM public.actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed')
ORDER BY first_name, last_name;

-- 3) film: rental_rate 0.99, 2.99, 4.99 VE replacement_cost 12.99, 15.99, 28.99 olan kayıtları tüm sütunlarıyla getir (IN kullan).
SELECT *
FROM public.film
WHERE rental_rate IN (0.99, 2.99, 4.99)
  AND replacement_cost IN (12.99, 15.99, 28.99)
ORDER BY title;
