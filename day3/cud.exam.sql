INSERT INTO bonus (ename, job. sal, comm)
VALUES('MILLER', 'CLERK', 1300, 50000);


INSERT INTO test
            ( idx, title, descs, regdate )
VALUES
            ( 1, '��������1', '���볻�볻��1',  SYSDATE );

INSERT INTO test
            ( idx, title, descs, regdate )
VALUES
            ( 2, '��������2', '���볻�볻��2',  SYSDATE);

INSERT INTO test
            ( idx, title, descs, regdate )
VALUES
            ( 3, '��������3', '���볻�볻��3',  SYSDATE );

INSERT INTO test
            ( idx, title, descs, regdate )
VALUES
            ( 4, '��������4', '���볻�볻��4', TO_DATE('2021-12-31', 'YYYY-MM-DD' ));


-- ������
SELECT SEQ_TEXT.CURRVAL FROM dual;
SELECT SEQ_TEST.NEXTVAL FROM dual; 


INSERT INTO TEST
           ( idx, title, descs, regdate )
           VALUES
           ( SEQ_TEST.NEXTVAL, '��������5', '���볻�볻��5',  SYSDATE ) ;
           
           
 INSERT INTO TEST
           ( idx, title, descs, regdate )
           VALUES
           ( SEQ_STR.NEXTVAL, '��������100', '���볻�볻��100',  SYSDATE ) ;          

 INSERT INTO TEST
           ( idx, title, descs, regdate )
           VALUES
           ( SEQ_STR.NEXTVAL, '��������104', '���볻�볻��104',  SYSDATE ) ;  
           
-- UPDATE
UPDATE test
      SET title = '���������ΰ���?'
           , descs = '������ ����˴ϴ�.'
       WHERE idx = 100; 
       
COMMIT; --���� ����
ROLLBACK; --�ǵ�����



-- DELETE
DELETE FROM test
 WHERE idx = 100;
 
-- ��������
SELECT ROWNUM, v.ename, v.job, v.sal, v.comm FROM(
    SELECT ename, job, sal, comm FROM emp
    ORDER BY sal DESC) "V"
    WHERE ROWNUM = 1;
    
    
    
SELECT empno, ename, job, sal
FROM emp
MINUS
SELECT empno, ename, job, sal
FROM emp
WHERE sal < 5000;

