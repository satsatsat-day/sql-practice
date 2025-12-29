-- 데이터 삽입
-- 1) 1개 삽입
INSERT INTO employees (id, name, salary)
VALUES (1, 'Kim', 50000);
-- 2) 여러 개 삽입
INSERT INTO employees (id, name, salary)
VALUES (2, 'Lee', 60000), (3, 'Park', 40000), (4, 'Jung', 55000);

-- 데이터 조회
SELECT *
FROM employees;

-- 데이터 수정
-- 1) 특정 조건 수정
UPDATE employees
SET salary = 45000
WEHRE id = 1;
-- 2) 전부 수정
UPDATE employees
SET salary = salary + 10000;

-- 데이터 삭제
-- 1) 특정 조건 삭제
DELETE FROM employees
WHERE id = 1;
-- 2) 전체 삭제
DELETE FROM employees;
