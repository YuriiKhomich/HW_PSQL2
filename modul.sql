movies=# SELECT 'This is' || ' ' || name || ',' ||
movies-# CASE WHEN gender = 'm' THEN ' he has email' ELSE ' she has email'
movies-# END || ' ' || email AS "Info"
movies-# FROM vasia;
                     Info
-----------------------------------------------
 This is Vasia, he has email mmm@mmail.com
 This is Alex, he has email mmm@gmail.com
 This is Alexey, he has email alexey@gmail.com
 This is Helen, she has email hell@gmail.com
 This is Jenny, she has email eachup@gmail.com
 This is Lora, she has email tpicks@gmail.com
(6 рядків)

movies=# SELECT 'We have' || ' ' || COUNT(gender) || ' ' ||
movies-# CASE WHEN gender = 'm' then 'boys!'
movies-# ELSE 'girls!' END AS "Gender information"
movies-# FROM vasia
movies-# GROUP BY gender;
 Gender information
--------------------
 We have 3 boys!
 We have 3 girls!
(2 рядків)

movies=# SELECT name, COUNT(word.vocabulary_id) AS " words"
movies-# FROM word
movies-# INNER JOIN vocabulary ON (vocabulary.id = word.vocabulary_id)
movies-# GROUP BY name,vocabulary_id
movies-# ORDER BY name;
  name   |  words
---------+--------
 animals |     10
 human   |     10
 nature  |     10
 school  |     10
 SF      |     10
(5 рядків)


