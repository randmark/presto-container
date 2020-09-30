select * from "aws-rds-postgres".public.orders ;


CREATE TABLE IF NOT EXISTS postgres-laptop.public.migrate-orders AS
select * from "aws-rds-postgres".public.orders;

select count(1) from "aws-rds-postgres".public.orders ;


create table "postgres-laptop".public.orders as
select * from "aws-rds-postgres".public.orders ;

select * from "postgres-laptop".public.orders;

select count(1) from "postgres-laptop".public.orders;

drop table "postgres-laptop".public.orders ;

create table "postgres-laptop".public.customer as
select * from tpch.sf1000.customer ;