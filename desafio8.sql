SELECT art.artist_name AS artista,
alb.album_name AS album FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artist_id=alb.artist_id
WHERE artist_name = 'Walter Phoenix'
ORDER BY album;