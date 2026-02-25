create table air_quality_region_avg  AS 
select
	"시도명",
	AVG("미세먼지농도") AS avg_pm10
from air_quality
group by "시도명";