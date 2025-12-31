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



-- **연습**
-- 프로그래머스 Lv.1: 여러 기준으로 정렬하기
-- ORDER BY
SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME, DATETIME DESC;

-- 프로그래머스 Lv.1: 이름에 el이 들어가는 동물 찾기
-- LIKE + 와일드카드 %
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'DOG' AND NAME LIKE '%el%'
ORDER BY NAME;

-- 프로그래머스 Lv.2: 고양이와 개는 몇 마리 있을까
-- GROUP BY
SELECT ANIMAL_TYPE, COUNT(*) AS count
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE;
