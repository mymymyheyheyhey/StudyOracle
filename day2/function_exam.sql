-- ���ڿ� �Լ�

-- �빮��

SELECT * FROM emp
WHERE job = UPPER('analyst');

SELECT UPPER('analyst') 
FROM dual;

SELECT LOWER(ename) "ENAME", 
              INITCAP(job) "JOB", comm
FROM emp
WHERE comm IS NOT NULL;

-- LENGTH ����
SELECT ename, LENGTH(ename) "���ڼ�", LENGTHB(ename) "����Ʈ ��"
FROM emp;

-- SUBSTRING
SELECT SUBSTR('�ȳ��ϼ���, �Ѱ���IT�����п� �����͹��Դϴ�.', 1, 2 ) phase 
FROM dual;

-- REPLACE
SELECT 
REPLACE('�ȳ��ϼ���, �Ѱ���IT�����п� �����͹��Դϴ�.', 
SUBSTR('�ȳ��ϼ���, �Ѱ���IT�����п� �����͹��Դϴ�.', 1, 5), '����������') phase 
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
SELECT TO_NUMBER('��õ���') 
FROM dual;

-- TO_DATE
SELECT TO_DATE('2022-01-12') FROM dual;
SELECT TO_DATE('01/12/22') FROM dual;
SELECT TO_DATE('01/12/22', 'mm/dd/yy') FROM dual;


-- NVL
SELECT ename, job, sal, NVL(comm, 0) "comm", (sal * 12) + NVL(comm, 0) "ANNSAL"
FROM emp
ORDER BY 5 DESC; --ASC / DESC

-- �����Լ� SUM, COUNT, MIN, MAX, AVG
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

SELECT deptno, NVL(job, '�հ�') "JOB", 
ROUND(AVG(sal), 2) "AVG(SAL)", MAX(sal), SUM(sal), COUNT(*)
FROM emp
GROUP BY ROLLUP(deptno, job);
