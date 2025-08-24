-- 1) city ve country tablolarını INNER JOIN ile birleştirip şehir ve ülke isimlerini getir
SELECT city.city, country.country
FROM public.city
INNER JOIN public.country ON city.country_id = country.country_id;

-- 2) customer ve payment tablolarını INNER JOIN ile birleştirip payment_id, first_name ve last_name'i getir
SELECT payment.payment_id, customer.first_name, customer.last_name
FROM public.payment
INNER JOIN public.customer ON payment.customer_id = customer.customer_id;

-- 3) customer ve rental tablolarını INNER JOIN ile birleştirip rental_id, first_name ve last_name'i getir
SELECT rental.rental_id, customer.first_name, customer.last_name
FROM public.rental
INNER JOIN public.customer ON rental.customer_id = customer.customer_id;
