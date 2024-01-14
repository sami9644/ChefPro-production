CREATE TABLE users(
userid VARCHAR(100) PRIMARY KEY,
fullname TEXT,
username VARCHAR(100) UNIQUE,
emailid VARCHAR(100) UNIQUE,
country TEXT,
birthdate DATE,
password TEXT
);
ALTER TABLE users ADD COLUMN avatar VARCHAR(100) DEFAULT "https://w7.pngwing.com/pngs/733/11/png-transparent-chef-illustration-chef-cooking-delicacies.png";

CREATE TABLE recipes (
recipeid VARCHAR(100) PRIMARY KEY,
title TEXT,
steps TEXT,
image TEXT,
recipeby VARCHAR(100),
FOREIGN KEY(recipeby) REFERENCES users(userid)
);
ALTER TABLE recipes ADD COLUMN ingredients TEXT;

CREATE TABLE ratings (
id VARCHAR(100) PRIMARY KEY,
stars FLOAT,
comment TEXT,
recipe VARCHAR(100),
commentor VARCHAR(100),
FOREIGN KEY(recipe) REFERENCES recipes(recipeid),
FOREIGN KEY(commentor) REFERENCES users(userid)
);
