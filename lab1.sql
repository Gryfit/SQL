USE library

SELECT title , title_no
FROM title

SELECT title
FROM title
WHERE title_no=10

SELECT member_no, fine_assessed
FROM loanhist
WHERE fine_assessed<=9 AND fine_assessed>=8

SELECT title_no, author
FROM title
WHERE author LIKE 'Charles Dickens' OR author LIKE 'Jane Austen' 

SELECT title_no, title
FROM title
WHERE title LIKE '%adventures%'

SELECT member_no, fine_assessed, fine_paid
FROM loanhist
where fine_assessed IS NOT NULL AND fine_paid IS NULL

SELECT DISTINCT city, state 
FROM adult

SELECT  title
FROM title
ORDER BY title

SELECT  member_no, isbn,fine_assessed, fine_assessed*2 AS 'double fine'
FROM loanhist
WHERE fine_assessed >0

SELECT  firstname+middleinitial+lastname AS 'email_name'
FROM member
WHERE lastname LIKE 'Anderson'

SELECT  LOWER(firstname+middleinitial+SUBSTRING(lastname,0,2)) AS 'lista proponowanych loginów email'
FROM member
WHERE lastname LIKE 'Anderson'

SELECT  'Title is: '+title+' title number: '+CONVERT(varchar, title_no)
FROM title