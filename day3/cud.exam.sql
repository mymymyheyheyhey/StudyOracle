INSERT INTO bonus (ename, job. sal, comm)
VALUES('MILLER', 'CLERK', 1300, 50000);


INSERT INTO test
            ( idx, title, descs, regdate )
VALUES
            ( 1, '내용증명1', '내용내용내용1',  SYSDATE );

INSERT INTO test
            ( idx, title, descs, regdate )
VALUES
            ( 2, '내용증명2', '내용내용내용2',  SYSDATE);

INSERT INTO test
            ( idx, title, descs, regdate )
VALUES
            ( 3, '내용증명3', '내용내용내용3',  SYSDATE );

INSERT INTO test
            ( idx, title, descs, regdate )
VALUES
            ( 4, '내용증명4', '내용내용내용4', TO_DATE('2021-12-31', 'YYYY-MM-DD' ));


-- 시퀀스
SELECT SEQ_TEXT.CURRVAL FROM dual;
SELECT SEQ_TEST.NEXTVAL FROM dual; 


INSERT INTO TEST
           ( idx, title, descs, regdate )
           VALUES
           ( SEQ_TEST.NEXTVAL, '내용증명5', '내용내용내용5',  SYSDATE ) ;
           
           
 INSERT INTO TEST
           ( idx, title, descs, regdate )
           VALUES
           ( SEQ_STR.NEXTVAL, '내용증명100', '내용내용내용100',  SYSDATE ) ;          

 INSERT INTO TEST
           ( idx, title, descs, regdate )
           VALUES
           ( SEQ_STR.NEXTVAL, '내용증명104', '내용내용내용104',  SYSDATE ) ;  
           
-- UPDATE
UPDATE test
      SET title = '내용증명인가요?'
           , descs = '내용이 변경됩니다.'
       WHERE idx = 100; 
       
COMMIT; --완전 저장
ROLLBACK; --되돌리기



-- DELETE
DELETE FROM test
 WHERE idx = 100;
 
-- 서브쿼리
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

