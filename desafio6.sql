SELECT MIN(signature_value) AS faturamento_minimo,
MAX(signature_value) AS faturamento_maximo,
ROUND(AVG(signature_value), 2) AS faturamento_medio,
SUM(signature_value) AS faturamento_total FROM SpotifyClone.signatures AS s
INNER JOIN SpotifyClone.users AS u
ON s.signature_id=u.signature_id;