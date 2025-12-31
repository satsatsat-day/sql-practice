-- 오름차순 / 내림차순 정렬
SELECT customer_id, first_name, last_name
FROM customer
ORDER BY customer_id DESC, first_name ASC;

-- 범위를 지정해 데이터 조회
-- ex) 데이터 100개 건너뛰고, 101번째부터 데이터 10개 조회
SELECT customer_id, first_name
FROM customer
ORDER BY customer_id ASC
LIMIT 10 OFFSET 100;

-- 특정 문자열을 포함하는 데이터 조회
-- 1) LIKE / 와일드카드 %
SELECT customer_id, first_name
FROM customer
WHERE first_name LIKE 'A%'
-- 2) 와일드카드 _
SELECT customer_id, first_name
FROM customer
WHERE first_name LIKE '_____';
-- 3) ESCAPE
SELECT *
FROM customer
WHERE first_name LIKE 'A#_%' ESCAPE '#';

-- 그룹화 / COUNT
SELECT special_features, COUNT(*) AS cnt
FROM film
GROUP BY special_features;

-- 그룹화한 데이터 필터링
SELECT special_features, COUNT(*) AS cnt
FROM film
GROUP BY special_features
HAVING cnt > 70;

-- 중복된 데이터 제거
SELECT DISTINCT special_features, rating
FROM film;


