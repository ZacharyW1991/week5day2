CREATE TABLE customer(
customer_id SERIAL PRIMARY KEY NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50)
);

CREATE TABLE movie(
movie_id SERIAL PRIMARY KEY NOT NULL,
title VARCHAR(100),
rating VARCHAR(30)
);

CREATE TABLE ticket(
ticket_id SERIAL PRIMARY KEY,
price VARCHAR(30) NOT NULL,
age_class VARCHAR(30) NOT NULL,
FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);