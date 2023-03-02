USE codeup_test_db;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist_name VARCHAR(50) DEFAULT 'NONE',
                        album_name  VARCHAR(50) NOT NULL,
                        release_date DATE,
                        sales  VARCHAR(50) NOT NULL,
                        genre  VARCHAR(50) NOT NULL,
                        content TEXT NOT NULL,
                        PRIMARY KEY (id)
);
