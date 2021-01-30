SELECT X.HACKER_ID,
(SELECT H.NAME FROM HACKERS H WHERE H.HACKER_ID=X.HACKER_ID),
SUM(X.SCORE) TOT_SCORE FROM (SELECT S.HACKER_ID, MAX(SCORE) SCORE FROM SUBMISSIONS S GROUP BY 1, S.CHALLENGE_ID) X
GROUP BY 1 
HAVING TOT_SCORE > 0
ORDER BY TOT_SCORE DESC, X.HACKER_ID;
