SELECT art.artist_name AS artista,
alb.album_name AS album,
COUNT(fol.user_id) AS seguidores FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artist_id=alb.artist_id
INNER JOIN SpotifyClone.follows AS fol
ON art.artist_id=fol.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;