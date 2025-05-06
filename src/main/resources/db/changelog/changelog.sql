--liquibase formatted sql
--changeset Amit:insert
--tag v2.0
insert into person (name, address1, address2, city) values
    ('John Doe', '123 Elm St', 'Apt 4B', 'Springfield'),
    ('Jane Smith', '456 Oak St', '', 'Shelbyville'),
    ('Bob Johnson', '789 Pine St', 'Suite 3C', 'Ogdenville');

insert into company (name, address1, address2, city) values
    ('Acme Corp', '500 Industrial Rd', 'Suite 100', 'Springfield'),
    ('Beta Enterprises', '202 Business Blvd', 'Unit 2A', 'Shelbyville'),
    ('Gamma Solutions', '301 Tech Ave', '', 'Ogdenville');

update person set country = 'US' where country is null;
