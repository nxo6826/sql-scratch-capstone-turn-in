--1
SELECT *
FROM survey
LIMIT 10;

--2
SELECT question, COUNT(*)
FROM survey
GROUP BY question;

--4
SELECT *
FROM quiz
LIMIT 5;

SELECT *
FROM home_try_on
LIMIT 5;

SELECT *
FROM purchase
LIMIT 5;

--5
SELECT DISTINCT q.user_id,
	h.user_id IS NOT NULL AS 'is_home_try_on',
  h.number_of_pairs,
  p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h ON q.user_id = h.user_id
LEFT JOIN purchase p ON p.user_id = q.user_id
LIMIT 10;

--6
SELECT DISTINCT SUM(h.user_id IS NOT NULL) AS 'is_home_try_on',
  h.number_of_pairs,
  SUM(p.user_id IS NOT NULL) AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h ON q.user_id = h.user_id
LEFT JOIN purchase p ON p.user_id = q.user_id
GROUP BY number_of_pairs;


SELECT style, COUNT(*)
FROM purchase
GROUP BY 1
ORDER BY 2 DESC;

SELECT model_name, COUNT(*)
FROM purchase
GROUP BY 1
ORDER BY 2 DESC;

SELECT color, COUNT(*)
FROM purchase
GROUP BY 1
ORDER BY 2 DESC;

SELECT price, COUNT(*)
FROM purchase
GROUP BY 1
ORDER BY 2 DESC;
