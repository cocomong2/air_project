SELECT * FROM air_quality

SELECT seoul, AVG(미세먼지농도)
From air_quality
GROUP BY seoul;
