create schema if not exists myDb;
use myDb;

create table if not exists CUSTOMERS
(
    id           varchar(50) not null,
    name         varchar(50) not null ,
    surname      varchar(50) not null ,
    age          int CHECK ( age > 0 AND age < 121),
    phone_number char(15)    not null ,
    PRIMARY KEY (id)
);

create table if not exists ORDERS
(
    id           int         not null,
    date         datetime    not null,
    customer_id  varchar (50),
    CONSTRAINT fk_customer
    FOREIGN KEY(customer_id)
    REFERENCES CUSTOMERS (id),
    product_name varchar(50) not null,
    amount       decimal     not null,
    PRIMARY KEY (id)
);