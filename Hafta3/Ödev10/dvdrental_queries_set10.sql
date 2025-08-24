-- 1) city ve country tablolarını LEFT JOIN ile şehir ve ülke isimlerini getir
SELECT city.city, country.country
FROM public.city
LEFT JOIN public.country ON city.country_id = country.country_id;

-- 2) customer ve payment tablolarını RIGHT JOIN ile birleştirip payment_id, first_name ve last_name'i getir
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM public.customer
RIGHT JOIN public.payment ON customer.customer_id = payment.customer_id;

-- 3) customer ve rental tablolarını FULL JOIN ile birleştirip rental_id, first_name ve last_name'i getir
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM public.customer
FULL JOIN public.rental ON customer.customer_id = rental.customer_id;
