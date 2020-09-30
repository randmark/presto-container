

select * from postgres_laptop.public.supplier ;

select * from postgres_laptop.public.lineitem ;

select * from aws_rds_postgres.public.orders ;

select su.name, li.orderkey, ord.clerk from 
	postgres_laptop.public.supplier su 
	inner join postgres_laptop.public.lineitem li on su.suppkey = li.suppkey 
	inner join aws_rds_postgres.public.orders ord on ord.orderkey = li.orderkey ;

create table postgres_laptop.public.partsupp as
select * from tpch.tiny.partsupp ;

