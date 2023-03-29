--JOIN QUERIES
-- Selezionare i dati di tutti giocatori che hanno scritto almeno una recensione, mostrandoli una sola volta (996)
--SELECT *
--FROM players
--INNER JOIN reviews
--ON players.id = reviews.player_id

-- Sezionare tutti i videogame dei tornei tenuti nel 2016, mostrandoli una sola volta (226)
--SELECT DISTINCT videogames.id AS videogame_id, videogames.name
--FROM videogames
--INNER JOIN tournament_videogame
--ON videogames.id = tournament_videogame.videogame_id
--JOIN tournaments
--ON tournament_videogame.tournament_id = tournaments.id
--WHERE year like 2016

-- Mostrare le categorie di ogni videogioco (1718)
--SELECT videogames.name, categories.name
--FROM videogames
--JOIN category_videogame
--ON videogames.id = category_videogame.videogame_id
--JOIN categories
--ON category_videogame.category_id = categories.id
--ORDER BY videogames.name

-- Selezionare i dati di tutte le software house che hanno rilasciato almeno un gioco dopo il 2020, mostrandoli una sola volta (6)
--SELECT DISTINCT software_houses.* 
--FROM software_houses
--INNER JOIN videogames
--ON software_houses.id = videogames.software_house_id
--WHERE release_date >= '01-01-2016'

-- Selezionare i premi ricevuti da ogni software house per i videogiochi che ha prodotto (55)
--SELECT software_houses.name, awards.*
--FROM software_houses
--JOIN videogames ON software_houses.id = videogames.software_house_id
--JOIN award_videogame ON videogames.id = award_videogame.videogame_id
--JOIN awards ON award_videogame.award_id = awards.id

-- Selezionare categorie e classificazioni PEGI dei videogiochi che hanno ricevuto recensioni da 4 e 5 stelle, mostrandole una sola volta (3363)
SELECT DISTINCT categories.name, pegi_labels.name
FROM videogames
JOIN category_videogame ON videogames.id = category_videogame.videogame_id
JOIN categories ON category_videogame.category_id = categories.id
JOIN pegi_label_videogame ON videogames.id = pegi_label_videogame.videogame_id
JOIN pegi_labels ON pegi_label_videogame.pegi_label_id = pegi_labels.id
JOIN reviews ON videogames.id = reviews.videogame_id
WHERE reviews.rating = 4 OR reviews.rating = 5
