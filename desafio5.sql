SELECT DISTINCT s.song_name AS cancao,
COUNT(h.user_id) AS reproducoes FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h
ON s.song_id=h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;