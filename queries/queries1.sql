select * from "aws-rds-postgres".public.orders ;


CREATE TABLE IF NOT EXISTS postgres_laptop.public.migrateorders AS
select * from aws_rds_postgres.public.orders;

select count(1) from "aws-rds-postgres".public.orders ;


create table "postgres-laptop".public.orders as
select * from "aws-rds-postgres".public.orders ;

select * from "postgres-laptop".public.orders;

select count(1) from "postgres-laptop".public.orders;

drop table "postgres-laptop".public.orders ;

create table "postgres_laptop".public.customertpch as
select * from tpch.sf100.customer ;

create table postgres_laptop.public.customer2 as
select * from tpch.sf1.customer;


select * from postgres_laptop.public

select count(1) from tpch.sf1.customer ;

create table postgres_laptop.public.lineitem as
select * from tpch.sf1.lineitem ;

select * from postgres_laptop.public.supplier ;

select * from aws_rds_postgres.public.orders ord inner join postgres_laptop.