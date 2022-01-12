-- 문자열 함수

-- 대문자

SELECT * FROM emp
WHERE job = UPPER('analyst');

SELECT UPPER('analyst') 
FROM dual;

SELECT LOWER(ename) "ENAME", 
              INITCAP(job) "JOB", comm
FROM emp
WHERE comm IS NOT NULL;

-- LENGTH 길이
SELECT ename, LENGTH(ename) "글자수", LENGTHB(ename) "바이트 수"
FROM emp;

-- SUBSTRING
SELECT SUBSTR('안녕하세요, 한가람IT전문학원 빅데이터반입니다.', 1, 2 ) phase 
FROM dual;

-- REPLACE
SELECT 
REPLACE('안녕하세요, 한가람IT전문학원 빅데이터반입니다.', 
SUBSTR('안녕하세요, 한가람IT전문학원 빅데이터반입니다.', 1, 5), '저리가세요') phase 
FROM dual;

-- CONCATENATION
SELECT 'HELLO'||'WOLRD' 
FROM dual;

-- TRIM
SELECT '    DSFDSDF     ' FROM dual;
SELECT TRIM('    DSFDSDF     ') FROM dual;
SELECT LTRIM('    DSFDSDF') FROM dual;
SELECT RTRIM('          DSFDSDF     ') FROM dual;

-- SYSDATE
SELECT SYSDATE FROM dual;

-- TO_CHAR
SELECT ename, hiredate,
TO_CHAR(hiredate, 'yyyy-mm-dd') "hiredate",
TO_CHAR(sal)||'$' "$sal"
FROM emp;

-- TO_NUMBER
SELECT TO_NUMBER(REPLACE('2400$', '$', '')) + 100 
FROM dual;
SELECT TO_NUMBER('이천사백') 
FROM dual;

-- TO_DATE
SELECT TO_DATE('2022-01-12') FROM dual;
SELECT TO_DATE('01/12/22') FROM dual;
SELECT TO_DATE('01/12/22', 'mm/dd/yy') FROM dual;


-- NVL
SELECT ename, job, sal, NVL(comm, 0) "comm", (sal * 12) + NVL(comm, 0) "ANNSAL"
FROM emp
ORDER BY 5 DESC; --ASC / DESC

-- 집계함수 SUM, COUNT, MIN, MAX, AVG
SELECT sal, NVL(comm, 0) comm FROM emp;
SELECT SUM(sal) totalsalary FROM emp;
SELECT SUM(NVL(comm, 0)) totalcommision FROM emp;

SELECT MAX(sal) FROM emp;
SELECT MIN(sal) FROM emp;
SELECT TO_CHAR('$'||ROUND(AVG(sal), 2)) "AVGSAL"
FROM emp;

SELECT MAX(sal), SUM(sal),  job, deptno
FROM emp
GROUP BY job, deptno;


-- HAVING
SELECT MAX(sal), SUM(sal),  job, deptno
FROM emp
GROUP BY job, deptno
HAVING MAX(sal) > 4000
;

SELECT deptno, job, AVG(sal)
FROM emp
GROUP BY deptno, job
HAVING AVG(sal) >= 3000
ORDER BY deptno, job;

SELECT deptno, NVL(job, '합계') "JOB", 
ROUND(AVG(sal), 2) "AVG(SAL)", MAX(sal), SUM(sal), COUNT(*)
FROM emp
GROUP BY ROLLUP(deptno, job);
