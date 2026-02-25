create view latest_air_quality AS 
select *
from air_quality
order by "측정시간" desc
limit 100;