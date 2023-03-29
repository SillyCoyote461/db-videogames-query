--SELECT *
--FROM software_houses
--WHERE country LIKE 'United States'

--SELECT *
--FROM players
--WHERE city LIKE 'Rogahnland'

--SELECT *
--FROM players
--WHERE name LIKE '%a'

--SELECT *
--FROM reviews
--WHERE player_id = 800

--SELECT COUNT(id)
--FROM tournaments
--WHERE year = 2015

--SELECT *
--FROM awards
--WHERE description like '%facere%'

--SELECT DISTINCT videogames.name
--FROM videogames
--JOIN category_videogame ON videogames.id = category_videogame.videogame_id
--WHERE category_videogame.category_id = 2 OR category_videogame.category_id = 6

--SELECT * 
--FROM reviews
--WHERE rating >= 2 AND rating <= 4

--SELECT *
--FROM videogames
--WHERE DATEPART(YEAR, release_date) = 2020

--SELECT DISTINCT videogames.id
--FROM videogames
--JOIN reviews ON videogames.id = reviews.videogame_id
--WHERE reviews.rating = 5


-----BONUS-----

--SELECT COUNT(rating), AVG(rating)
--FROM reviews
--WHERE videogame_id = 412

--SELECT COUNT(id)
--FROM videogames
--WHERE software_house_id = 1 
--AND DATEPART(YEAR, release_date) = 2018