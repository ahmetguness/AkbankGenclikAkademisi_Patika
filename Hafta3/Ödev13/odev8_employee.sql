-- Tabloyu oluştur
CREATE TABLE IF NOT EXISTS employee (
  id       INTEGER PRIMARY KEY,
  name     VARCHAR(50) NOT NULL,
  birthday DATE        NOT NULL,
  email    VARCHAR(100) NOT NULL
);

-- 50 satır veri ekle (örnek mock data üretim mantığı)
INSERT INTO employee (id, name, birthday, email)
SELECT gs AS id,
       fn || ' ' || ln AS name,
       (DATE '1978-01-01' + (trunc(random()*10000)) * INTERVAL '1 day')::date AS birthday,
       lower(replace(fn || '.' || ln, ' ', '.')) || gs || '@mail.com' AS email
FROM generate_series(1,50) AS gs
CROSS JOIN LATERAL (
  SELECT (ARRAY['Ahmet','Ayşe','Mehmet','Elif','Can','Zeynep','Ali','Ece','Emre','Naz',
                'Deniz','Mert','Sena','Ozan','Cem','Buse','Kerem','Derya','Eren','Selin']
         )[(floor(random()*20)+1)::int] AS fn,
         (ARRAY['Güneş','Yılmaz','Kaya','Demir','Çelik','Şahin','Yıldız','Yıldırım','Aydın','Öztürk',
                'Arslan','Doğan','Kılıç','Aslan','Kurt','Koç','Erdoğan','Polat','Avcı','Ateş']
         )[(floor(random()*20)+1)::int] AS ln
) n;

-- 5 adet UPDATE
UPDATE employee
SET email = lower(replace(name, ' ', '_')) || '@example.com'
WHERE id % 10 = 0;

UPDATE employee
SET name = initcap(split_part(email, '@', 1))
WHERE id % 10 = 1;

UPDATE employee
SET birthday = birthday + INTERVAL '1 year'
WHERE id % 10 = 2;

UPDATE employee
SET name = name || ' Jr.'
WHERE birthday >= DATE '2000-01-01';

UPDATE employee
SET email = regexp_replace(email, '@.*$', '@company.com')
WHERE id % 10 = 3;

-- 5 adet DELETE
DELETE FROM employee WHERE id % 20 = 0;
DELETE FROM employee WHERE name LIKE 'Z%';
DELETE FROM employee WHERE birthday < DATE '1980-01-01';
DELETE FROM employee WHERE email ILIKE '%test%';
DELETE FROM employee WHERE name ILIKE '%Jr.%';
