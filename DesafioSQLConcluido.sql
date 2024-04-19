--1 
SELECT Nome, Ano FROM dbo.Filmes

--2
SELECT Nome, Ano FROM dbo.Filmes ORDER BY  Ano ASC

--3
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Nome = 'De Volta Para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Ano > 2000

--6
SELECT Nome, Ano, Duracao FROM dbo.Filmes WHERE Duracao > 100 AND Duracao < 150

--7
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY COUNT(Duracao) DESC;

--8
SELECT PrimeiroNome,UltimoNome FROM Atores WHERE Genero = 'M'

--9
SELECT PrimeiroNome,UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

--10
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 

--11
SELECT Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Genero = 'Mistério'

--12
SELECT Nome, PrimeiroNome,UltimoNome,Papel FROM Filmes INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id 
