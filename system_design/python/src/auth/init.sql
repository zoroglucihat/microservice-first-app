-- Kullanıcı oluşturuluyor
CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Auth123';

-- Veritabanı oluşturuluyor
CREATE DATABASE auth;

-- Kullanıcıya yetkiler veriliyor
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

-- auth veritabanı kullanılmaya başlanıyor
USE auth;

-- users tablosu oluşturuluyor
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- İlk kullanıcı ekleniyor
INSERT INTO users (email, password) VALUES ('zorogluihat@test.com', '123456');
