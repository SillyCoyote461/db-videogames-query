-- Contare quante software house ci sono per ogni paese (3)
--SELECT COUNT(software_houses.id) AS sh_per_country
--FROM software_houses
--GROUP BY software_houses.country

-- Contare quante recensioni ha ricevuto ogni videogioco (del videogioco vogliamo solo l'ID) (500)
--SELECT COUNT(reviews.id)
--FROM reviews
--GROUP BY reviews.videogame_id

-- Contare quanti videogiochi hanno ciascuna classificazione PEGI (della classificazione PEGI vogliamo solo l'ID) (13)
--SELECT pegi_labels.name ,COUNT(pegi_label_videogame.videogame_id)
--FROM pegi_labels
--JOIN pegi_label_videogame ON pegi_labels.id = pegi_label_videogame.pegi_label_id
--GROUP BY pegi_labels.name

-- Mostrare il numero di videogiochi rilasciati ogni anno (11)
--SELECT DATEPART(YEAR, release_date), COUNT(id) 
--FROM videogames
--GROUP BY DATEPART(YEAR, release_date)

-- Contare quanti videogiochi sono disponbiili per ciascun device (del device vogliamo solo l'ID) (7)
--SELECT devices.name, COUNT(device_videogame.videogame_id)
--FROM devices
--JOIN device_videogame ON devices.id = device_videogame.device_id
--GROUP BY devices.name

-- Ordinare i videogame in base alla media delle recensioni (del videogioco vogliamo solo l'ID) (500)
--SELECT videogames.name, AVG(reviews.rating)
--FROM videogames
--JOIN reviews ON videogames.id = reviews.videogame_id
--GROUP BY videogames.name
--ORDER BY AVG(reviews.rating)