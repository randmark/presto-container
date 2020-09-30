

select * from postgres_laptop.public.supplier ;

select * from postgres_laptop.public.lineitem ;

select * from aws_rds_postgres.public.orders ;

select count(1) from aws_rds_postgres.public.orders;

select su.name, li.orderkey, ord.clerk from 
	postgres_laptop.public.supplier su 
	inner join postgres_laptop.public.lineitem li on su.suppkey = li.suppkey 
	inner join aws_rds_postgres.public.orders ord on ord.orderkey = li.orderkey limit 100 ;

create table aws_rds_postgres.public.supplier as
select * from postgres_laptop.public.supplier ;


