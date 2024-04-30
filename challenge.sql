======================== 3 =======================

SELECT 
Nome,
Ano,
Duracao
FROM Filmes
WHERE Nome LIKE '%Volta%'

======================== 4 =======================

SELECT * FROM Filmes
WHERE Ano = 1997

======================== 5 =======================

SELECT * FROM Filmes
WHERE Ano > 2000

======================== 6 =======================

SELECT * FROM Filmes f
WHERE f.Duracao > 100 AND f.Duracao < 150
ORDER BY Duracao

======================== 7 =======================
// O COMANDO ESTÁ INADEQUADO, POIS PEDE QUE A CONSULTA
// SEJA ORDENADA PELA DURAÇÃO, PORÉM ESTE DADO NÃO SE
// ENCONTRA NA CONSULTA E A IMAGEM MOSTRA O RESULTADO SENDO
// ORDENADO PELA QUANTIDADE DE FILMES LANÇADOS NAQUELE ANO

SELECT 
f.Ano,
COUNT(f.Ano) Quantidade
FROM Filmes f
GROUP BY Ano
ORDER BY Quantidade DESC

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
