create table air_quality_hourly AS 
select 
	date_trunc('hour',"측정시간") AS hour,
	AVG("미세먼지농도") as avg_pm10
from air_quality
group by hour;