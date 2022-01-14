--1번 문제 @
SELECT
LOWER(email) "email", mobile, names, addr, levels
FROM membertbl
ORDER BY names DESC;

--2번 문제 @
SELECT 
names "책제목", author "저자명", TO_CHAR(releasedate, 'YYYY-MM-DD') "출판일", price "가격"
FROM bookstbl
ORDER BY idx;

--3번 문제 @
SELECT
d.names "장르", b.names "책제목", b.author "저자", b.releasedate "출판일", b.isbn "책코드번호", TO_CHAR(b.price, '999,999')||'원' "가격"
FROM divtbl d, bookstbl b
WHERE d.division = b.division
ORDER BY idx DESC;


--4번 문제 @
INSERT INTO membertbl
(idx, names, levels, addr, mobile, email, userid, password, lastlogindt, loginipaddr)
VALUES
(EXAM.nextval, '홍길동', 'A', '부산시 동구 초량동', '010-7989-0909', 'HGD09@NAVER.COM', 'HGD7989', 12345, NULL, NULL);

SELECT
EXAM.nextval FROM dual;



-- 5번 문제 @
SELECT
NVL(d.names, '--합계--') "장르",  TO_CHAR(SUM(b.price), '999,999,999')||'원' "장르별합계금액"
FROM divtbl d, bookstbl b
WHERE d.division = b.division
GROUP BY ROLLUP(d.names)
ORDER BY d.names;