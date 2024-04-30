======================== 8 =======================

SELECT a.PrimeiroNome, a.UltimoNome, a.Genero
FROM Atores a

======================== 9 =======================

SELECT 
a.PrimeiroNome,
a.UltimoNome,
a.Genero
FROM Atores a
WHERE a.Genero = 'F'
ORDER BY a.PrimeiroNome

======================== 10 =======================

SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON fg.IdFilme = f.Id
INNER JOIN Generos g ON fg.IdGenero = g.Id

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
