
======================== 11 =======================

SELECT 
f.Nome,
g.Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério'

======================== 12 =======================

SELECT 
f.Nome, 
a.PrimeiroNome,
a.UltimoNome,
e.Papel
FROM Filmes f
INNER JOIN ElencoFilme e ON E.IdFilme = f.Id
INNER JOIN Atores a ON e.IdAtor = a.Id
