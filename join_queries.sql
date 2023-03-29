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
--SELECT DISTINCT videogames.id, categories.name, pegi_labels.name
--FROM videogames
--JOIN category_videogame ON videogames.id = category_videogame.videogame_id
--JOIN categories ON category_videogame.category_id = categories.id
--JOIN pegi_label_videogame ON videogames.id = pegi_label_videogame.videogame_id
--JOIN pegi_labels ON pegi_label_videogame.pegi_label_id = pegi_labels.id
--JOIN reviews ON videogames.id = reviews.videogame_id
--WHERE reviews.rating = 4 OR reviews.rating = 5

-- Selezionare quali giochi erano presenti nei tornei nei quali hanno partecipato i giocatori il cui nome inizia per 'S' (474)
--SELECT DISTINCT videogames.id, videogames.name
--FROM videogames
--INNER JOIN tournament_videogame ON videogames.id = tournament_videogame.videogame_id
--JOIN tournaments ON tournament_videogame.tournament_id = tournaments.id
--JOIN player_tournament ON tournaments.id = player_tournament.tournament_id
--JOIN players ON player_tournament.player_id = players.id
--WHERE players.name LIKE 'S%'

-- Selezionare le città in cui è stato giocato il gioco dell'anno del 2018 (36)
--SELECT DISTINCT tournaments.city
--FROM tournaments
--JOIN tournament_videogame ON tournaments.id = tournament_videogame.tournament_id
--JOIN videogames ON tournament_videogame.videogame_id = videogames.id
--JOIN award_videogame ON videogames.id = award_videogame.videogame_id
--WHERE award_videogame.year = '2018'

-- Selezionare i giocatori che hanno giocato al gioco più atteso del 2018 in un torneo del 2019 (3306)
--SELECT DISTINCT players.nickname, tournaments.id
--FROM players
--JOIN player_tournament ON players.id = player_tournament.player_id
--JOIN tournaments ON player_tournament.tournament_id = tournaments.id
--JOIN tournament_videogame ON tournaments.id = tournament_videogame.tournament_id
--JOIN videogames ON tournament_videogame.videogame_id = videogames.id
--JOIN award_videogame ON videogames.id = award_videogame.videogame_id
--WHERE tournaments.year = '2019'
--AND award_videogame.year = '2018'


-----BONUS-----
--SELECT TOP 1 *
--FROM videogames
--JOIN software_houses ON videogames.software_house_id = software_houses.id
--ORDER BY release_date ASC

--SELECT videogames.id, COUNT(reviews.rating)
--FROM videogames
--JOIN reviews 
--ON videogames.id = reviews.videogame_id
--GROUP BY videogames.id
--ORDER BY COUNT(reviews.rating) DESC