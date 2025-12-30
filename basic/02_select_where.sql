-- 테이블 구조 확인
SHOW COLUMNS FROM customer;

-- 전체 데이터 조회
SELECT * FROM cusotmer;

-- 특정 열 조회
SELECT customer_id, first_name, last_name
FROM customer;

-- 비교 연산자를 이용한 조회
SELECT customer_id, first_name, last_name
FROM customer
WHERE store_id < 5;

-- 논리 연산자를 이용한 조회
SELECT * FROM city
WHERE (country_id = 103 OR country_id = 86)
  AND city IN ('Cheju', 'Sunnyvale', 'Dallas');

-- NULL과 공백
-- 1) NULL 데이터 조회
SELECT * FROM address
WHERE address2 IS NULL;
-- 2) NULL 아닌 데이터 조회
SELECT * FROM address
WHERE address2 IS NOT NULL;
-- 3) 공백 조회 (공백은 NULL이 아님)
SELECT * FROM address
WHERE address2 = '';



-- **연습**
-- 프로그래머스 Lv.1: 아픈 동물 찾기
-- SELECT + WHERE + 비교 연산자
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick';

-- 프로그래머스 Lv.1: 조건에 맞는 회원수 구하기
-- 논리 연산자 연습
SELECT COUNT(*) FROM USER_INFO
WHERE (joined BETWEEN '2021-01-01' AND '2022-01-01')
  AND age >= 20 AND age <= 29;

-- 프로그래머스 Lv.1: 이름이 없는 동물의 아이디
-- IS NULL 조건 연습
SELECT animal_id FROM ANIMAL_INS
WHERE name IS NULL;
