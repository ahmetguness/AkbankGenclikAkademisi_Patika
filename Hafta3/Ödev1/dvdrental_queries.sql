-- 1) film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız.
SELECT title, description
FROM public.film
ORDER BY title, description;

-- 2) film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60'dan büyük VE 75'ten küçük olma koşullarıyla sıralayınız.
SELECT *
FROM public.film
WHERE length > 60 AND length < 75
ORDER BY length, title;

-- 3) film tablosunda bulunan tüm sütunlardaki verileri rental_rate = 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.
SELECT *
FROM public.film
WHERE rental_rate = 0.99
  AND (replacement_cost = 12.99 OR replacement_cost = 28.99)
ORDER BY title;

-- 4) customer tablosunda first_name değeri 'Mary' olan müşterinin last_name değeri nedir?
SELECT last_name
FROM public.customer
WHERE first_name = 'Mary'
ORDER BY last_name;

-- 5) film tablosundaki uzunluğu (length) 50'den BÜYÜK OLMAYIP (<= 50) aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.
SELECT *
FROM public.film
WHERE length <= 50
  AND rental_rate NOT IN (2.99, 4.99)
ORDER BY length, title;
