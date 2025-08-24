-- 1) actor ve customer tablolarındaki first_name sütunlarını tüm verilerle listele (UNION ALL)
SELECT first_name FROM public.actor
UNION ALL
SELECT first_name FROM public.customer;

-- 2) actor ve customer tablolarında first_name sütunlarının kesişen verileri (INTERSECT)
SELECT first_name FROM public.actor
INTERSECT
SELECT first_name FROM public.customer;

-- 3) actor tablosunda olup customer tablosunda olmayan first_name verileri (EXCEPT)
SELECT first_name FROM public.actor
EXCEPT
SELECT first_name FROM public.customer;

-- 4) Tekrar eden veriler için UNION yerine UNION ALL ile (tüm veriler)
SELECT first_name FROM public.actor
UNION ALL
SELECT first_name FROM public.customer;

-- 5) Tekrar eden kesişim verileri için INTERSECT ALL
SELECT first_name FROM public.actor
INTERSECT ALL
SELECT first_name FROM public.customer;

-- 6) Tekrar eden farklı veriler için EXCEPT ALL
SELECT first_name FROM public.actor
EXCEPT ALL
SELECT first_name FROM public.customer;
