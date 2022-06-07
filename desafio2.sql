SELECT COUNT(DISTINCT song_name) AS cancoes,
COUNT(DISTINCT artist_name) AS artistas,
COUNT(DISTINCT album_name) AS albuns FROM SpotifyClone.songs AS c
INNER JOIN SpotifyClone.albuns AS al
ON c.album_id=al.album_id
INNER JOIN SpotifyClone.artists AS ar
ON al.artist_id=ar.artist_id;