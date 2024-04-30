
======================== 11 =======================



======================== 12 =======================

SELECT 
f.Nome, 
a.PrimeiroNome,
a.UltimoNome,
e.Papel
FROM Filmes f
INNER JOIN ElencoFilme e ON E.IdFilme = f.Id
INNER JOIN Atores a ON e.IdAtor = a.Id
