--liquibase formatted sql
--changeset Amit:insert_2

-- INSERT into department
insert into department (name, address1, address2, city) values
    ('amit1', '123 Elm St', 'Apt 4B', 'Springfield'),
    ('pal1', '456 Oak St', '', 'Shelbyville'),
    ('sudeep1', '789 Pine St', 'Suite 3C', 'Ogdenville');

-- INSERT into company
insert into company (name, address1, address2, city) values
    ('Acme1 Corp', '500 Industrial Rd', 'Suite 100', 'Springfield'),
    ('Beta1 Enterprises', '202 Business Blvd', 'Unit 2A', 'Shelbyville'),
    ('Gamma1 Solutions', '301 Tech Ave', '', 'Ogdenville');

-- UPDATE person set country
update department set country = 'US' where country is null;

