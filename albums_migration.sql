USE codeup_test_db;
DROP TABLE albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (255) NOT NULL,
    name VARCHAR (255) NOT NULL,
    release_date INT NOT NULL,
    sales FLOAT,
    genre TEXT,
    PRIMARY KEY (id)
);
