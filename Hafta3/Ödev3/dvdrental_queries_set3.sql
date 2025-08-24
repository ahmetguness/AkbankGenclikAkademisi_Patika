-- 1) country: 'A' ile başlayıp 'a' ile biten ülke adlarını (country) listele.
SELECT country
FROM public.country
WHERE country LIKE 'A%a'
ORDER BY country;

-- 2) country: en az 6 karakter uzunluğunda olup 'n' ile biten ülke adlarını listele.
SELECT country
FROM public.country
WHERE char_length(country) >= 6
  AND country LIKE '%n'
ORDER BY country;

-- 3) film: başlıktan (title) içinde en az 4 adet 't'/'T' geçen filmleri listele.
SELECT title
FROM public.film
WHERE (char_length(lower(title)) - char_length(replace(lower(title), 't', ''))) >= 4
ORDER BY title;

-- 4) film: title 'C%' ile başlayan, length > 90 ve rental_rate = 2.99 olan tüm sütunları listele.
SELECT *
FROM public.film
WHERE title LIKE 'C%'
  AND length > 90
  AND rental_rate = 2.99
ORDER BY length, title;
