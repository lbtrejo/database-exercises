USE codeup_test_db;
SELECT 'Albums after 1991' AS '';
select name, artist from albums where release_date > 1991;
SELECT 'Disco Albums' AS '';
select name, artist from albums where genre = 'Disco';
SELECT 'Whitney Houston Albums' AS '';
select name, artist from albums where artist = 'Whitney Houston / Various artists';

DELETE from albums where release_date > 1991;
DELETE from albums where genre = 'Disco';
DELETE from albums where artist = 'Whitney Houston / Various artists';

SELECT '==================== POST DELETION ====================' as '';
SELECT 'Albums after 1991' AS '';
select name, artist from albums where release_date > 1991;
SELECT 'Disco Albums' AS '';
select name, artist from albums where genre = 'Disco';
SELECT 'Whitney Houston Albums' AS '';
select name, artist from albums where artist = 'Whitney Houston / Various artists';