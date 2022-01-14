-- �⺻ �̳� ����
SELECT e.empno
            , e.ename
            , e.job
            , TO_CHAR(e.hiredate, 'YYYY-MM-DD') "HIREDATE"
            , e.deptno
            , d.dname
   FROM emp e
   INNER JOIN dept d
        ON e.deptno = d.deptno
   WHERE e.job = 'SALESMAN';
   
   
   
   -- PL/SQL �̳�����
   SELECT e.empno
            , e.ename
            , e.job
            , TO_CHAR(e.hiredate, 'YYYY-MM-DD') "HIREDATE"
            , e.deptno
            , d.dname
   FROM emp e, dept d
   WHERE 1 = 1 --TIP
        AND e.deptno = d.deptno
        AND e.job = 'SALESMAN';



-- LEFT OUTER JOIN
SELECT e.empno
            , e.ename
            , e.job
            , TO_CHAR(e.hiredate, 'YYYY-MM-DD') "HIREDATE"
            , e.deptno
            , d.dname
   FROM emp e
   LEFT OUTER JOIN dept d
        ON e.deptno = d.deptno;




-- RIGHT OUTER JOIN
SELECT e.empno
            , e.ename
            , e.job
            , TO_CHAR(e.hiredate, 'YYYY-MM-DD') "HIREDATE"
            , e.deptno
            , d.dname
   FROM emp e
   RIGHT OUTER JOIN dept d
        ON e.deptno = d.deptno;


-- PL/SQL ��� JOIN
 SELECT e.empno
            , e.ename
            , e.job
            , TO_CHAR(e.hiredate, 'YYYY-MM-DD') "HIREDATE"
            , e.deptno
            , d.dname
   FROM emp e, dept d
   WHERE e.deptno = d.deptno;
   -- WHERE e.deptno (+) = d.deptno ; PL/SQL RIGHT OUTER JOIN
   -- WHERE e.deptno = d.deptno (+) ; PL/SQL LEFT OUTER JOIN
   
   
-- 3 ���̺� ����
SELECT e.empno
            , e.ename
            , e.job
            , TO_CHAR(e.hiredate, 'YYYY-MM-DD') "HIREDATE"
            , e.deptno
            , d.dname
            , b.comm
   FROM emp e, dept d, bonus b
   WHERE e.deptno (+) = d.deptno
        AND e.ename = b.ename (+) ;
        
        
        

   
   