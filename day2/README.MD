## 2일차 학습
### WHERE 절

```sql
SELECT ename, job, sal, sal * 12 AS ANNSAL
FROM emp
WHERE sal * 12 > 10000 
ORDER BY sal * 12 DESC;

