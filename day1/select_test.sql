DESC emp;

-- �ּ�, �Ʒ��� SELECT ������ ����
SELECT * 
FROM emp;

SELECT ename, job, hiredate
FROM emp;


-- �μ��� ���
SELECT deptno
FROM emp;

SELECT DISTINCT deptno
FROM emp;

-- ���� �ߺ� ���� �� ��
SELECT DISTINCT empno, deptno
FROM emp;

SELECT DISTINCT job, deptno
FROM emp;

SELECT * FROM emp
WHERE empno = 7499;

SELECT * FROM emp
WHERE ename = 'ȫ�浿';

SELECT * FROM emp
WHERE job = 'CLERK';

-- �޿� 1500 �̻� 
SELECT * FROM emp
WHERE sal >= 1500;

