1. Создать таблицу со следующими данными.

 id |  name  |      pwd       |      email       | gender
----+--------+----------------+------------------+--------
  1 | Vasia  | 21341234qwfsdf | mmm@mmail.com    | m
  2 | Alex   | 21341234       | mmm@gmail.com    | m
  2 | Alexey | qq21341234     | alexey@gmail.com | m
  4 | Helen  | MarryMeee      | hell@gmail.com   | f
  5 | Jenny  | SmakyMyb       | eachup@gmail.com | f
  6 | Lora   | burn23         | tpicks@gmail.com | f
(6 рядків)

2. Отобразить данные приведенного ниже вида, обратить внимание на he и she

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

3.Отобразить данные приведенного вида.

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

4-5.Получить результат из созданной и заполненной структуры данных.

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


