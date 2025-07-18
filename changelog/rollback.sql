--liquibase formatted sql
--changeset Amit:rollback_1

-- Rollback from department
delete from department where name in ('amit1','pal1','sudeep1');

-- Rollback from company
delete from company where name in ('Acme1 Corp','Beta1 Enterprises','Gamma1 Solutions');

-- Rollback update from department
update person set country = null where name in ('amit1','pal1','sudeep1');
