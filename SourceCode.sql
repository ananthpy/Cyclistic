create temporary table yearly_data as
select * from april_2023
union
select * from mar_2023
union
select * from feb_2023
union
select * from jan_2023
union
select * from dec_2022
union
select * from nov_2022
union
select * from oct_2022
union
select * from sept_2022
union
select * from aug_2022
union
select * from july_2022
union
select * from jun_2022
union
select * from may_2022

alter table yearly_data
add column ride_length time generated always as( ended_at - started_at) stored,
add column total_minutes integer generated always as(extract(minute from age(ended_at,started_at))) stored

select * from
yearly_data
where start_station_name is not null and
	  start_station_id is not null and
	  end_station_name is not null and
	  end_station_id  is not null and
	  total_minutes >=1;
