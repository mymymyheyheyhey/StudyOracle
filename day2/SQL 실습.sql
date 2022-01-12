-- �� ������ ��ȸ�ϴ� ������
SELECT * FROM emp
WHERE sal = 5000;

SELECT * FROM emp
WHERE job = 'CLERK';

SELECT * FROM emp
WHERE comm = 0 or comm IS NULL;

-- WHERE AND 
SELECT * FROM emp
WHERE comm IS NULL AND job = 'ANALYST';

SELECT empno, ename, deptno
FROM emp
WHERE deptno = 30;

-- JOIN 2�� �̻��� ���̺��� �ϳ��� ���̺�ó�� ��ȸ
SELECT e.empno, e.ename, e.job, e.hiredate, e.sal, d.dname
FROM emp e
JOIN dept d 
ON e.deptno = d.deptno;


-- DISTINCT ����
SELECT job FROM emp;

-- ��Ī ALIAS
SELECT ename, job, sal * 12 AS ANNSAL
FROM emp
ORDER BY sal DESC; --ASC / DESC

--WHERE
SELECT ename, job, sal, sal * 12 AS ANNSAL
FROM emp
WHERE sal * 12 > 10000 
ORDER BY sal * 12 DESC;

-- IN
SELECT ename, job, sal, sal * 12 AS ANNSAL
FROM emp
WHERE sal IN (800, 1600, 5000);

-- BETWEEN a AND b
SELECT ename, job, sal, sal * 12 AS ANNSAL
FROM emp
WHERE sal >= 1600 AND sal <= 2975;

SELECT ename, job, sal, sal * 12 AS ANNSAL
FROM emp
WHERE sal BETWEEN 1600 AND 2975;

--LIKE
SELECT ename, job, sal, sal * 12 AS ANNSAL
FROM emp
WHERE ename LIKE '__RD'; --%, __RD

--NULL, �Լ��� NVL()
SELECT ename, job, sal, comm
FROM emp
WHERE comm IS NOT NULL;

--����
SELECT empno, ename, job FROM emp
UNION
SELECT deptno, dname, loc FROM dept;