DROP SCHEMA IF EXISTS mysecurity CASCADE;
CREATE SCHEMA IF NOT EXISTS mysecurity;
SET SEARCH_PATH = mysecurity;

CREATE TABLE users
(
    id       bigserial,
    username varchar(30) not null unique,
    password varchar(80) not null,
    email    varchar(50) unique,
    primary key (id)
);

CREATE TABLE authorities
(
    id   serial,
    name varchar(50) not null,
    primary key (id)
);

CREATE TABLE users_authorities
(
    user_id bigint not null,
    authority_id int    not null,
    primary key (user_id, authority_id),
    foreign key (user_id) references users (id),
    foreign key (authority_id) references authorities (id)
);

INSERT INTO authorities (name)
VALUES ('READ'),
       ('UPDATE');

INSERT INTO users (username, password, email)
VALUES ('user', '$2a$12$jlXkLvOePxINbzzVyjOFJuiz5rtDmFX/HCVfxlNZFi9psvW.Vuy3e', 'user@yandex.ru');

INSERT INTO users_authorities (user_id, authority_id)
VALUES (1, 1) ;

