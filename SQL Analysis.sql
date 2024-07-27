select * from athletes;

select * from coaches;

select * from entriesgender;

select * from medals;

select * from teams;

-- Count the total athletes of each country
SELECT Country, COUNT(*) AS Total_Atheletes
FROM athletes
GROUP BY Country
ORDER BY Total_Atheletes DESC;

-- Count the total athletes of each Discipline
SELECT Discipline, COUNT(*) AS Athletes_Per_Discipine
FROM athletes
GROUP BY Discipline
ORDER BY Athletes_Per_Discipine DESC;


-- Count the total medals won by each country
SELECT Team_Country as Country, Total AS Total_Medals 
FROM medals ORDER BY Total_Medals DESC;


-- Calculate avg number of entries by gender for each discipline
SELECT Discipline
    , AVG(Female) AS Average_Female
    , AVG(Male) AS Average_Male
FROM entriesgender
GROUP BY Discipline;

