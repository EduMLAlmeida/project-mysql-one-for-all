SELECT DISTINCT u.user_name AS usuario,
IF((MAX(YEAR(history_date))) > 2020, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h
ON u.user_id=h.user_id
GROUP BY user_name
ORDER BY  user_name;