--1�� ���� @
SELECT
LOWER(email) "email", mobile, names, addr, levels
FROM membertbl
ORDER BY names DESC;

--2�� ���� @
SELECT 
names "å����", author "���ڸ�", TO_CHAR(releasedate, 'YYYY-MM-DD') "������", price "����"
FROM bookstbl
ORDER BY idx;

--3�� ���� @
SELECT
d.names "�帣", b.names "å����", b.author "����", b.releasedate "������", b.isbn "å�ڵ��ȣ", TO_CHAR(b.price, '999,999')||'��' "����"
FROM divtbl d, bookstbl b
WHERE d.division = b.division
ORDER BY idx DESC;


--4�� ���� @
INSERT INTO membertbl
(idx, names, levels, addr, mobile, email, userid, password, lastlogindt, loginipaddr)
VALUES
(EXAM.nextval, 'ȫ�浿', 'A', '�λ�� ���� �ʷ���', '010-7989-0909', 'HGD09@NAVER.COM', 'HGD7989', 12345, NULL, NULL);

SELECT
EXAM.nextval FROM dual;



-- 5�� ���� @
SELECT
NVL(d.names, '--�հ�--') "�帣",  TO_CHAR(SUM(b.price), '999,999,999')||'��' "�帣���հ�ݾ�"
FROM divtbl d, bookstbl b
WHERE d.division = b.division
GROUP BY ROLLUP(d.names)
ORDER BY d.names;