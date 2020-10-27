USE codeup_test_db;
SELECT 'All Albums' AS '';
select name, artist, sales from albums;
UPDATE albums
SET sales = sales * 10;
SELECT 'All Albums' AS '';
select name, artist, sales from albums;

SELECT 'All Albums release before 1980' AS '';
select name, release_date from albums where release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
where release_date < 1980;
SELECT 'All Albums release before 1980' AS '';
select name, release_date from albums where release_date < 1980;

SELECT 'All Albums by Michael Jackson' AS '';
select name, artist from albums where artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'All Albums by Michael Jackson' AS '';
select name, artist from albums where artist = 'Michael Jackson';
SELECT 'All Albums by Peter Jackson' AS '';
select name, artist from albums where artist = 'Peter Jackson';