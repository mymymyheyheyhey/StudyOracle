DESC emp;

-- 주석, 아래의 SELECT 구문을 실행
SELECT * 
FROM emp;

SELECT ename, job, hiredate
FROM emp;


-- 부서명만 출력
SELECT deptno
FROM emp;

SELECT DISTINCT deptno
FROM emp;

-- 이하 중복 제거 안 됨
SELECT DISTINCT empno, deptno
FROM emp;

SELECT DISTINCT job, deptno
FROM emp;

SELECT * FROM emp
WHERE empno = 7499;

SELECT * FROM emp
WHERE ename = '홍길동';

SELECT * FROM emp
WHERE job = 'CLERK';

-- 급여 1500 이상 
SELECT * FROM emp
WHERE sal >= 1500;

