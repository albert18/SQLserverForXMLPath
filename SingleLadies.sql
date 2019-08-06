USE [AdventureWorks2014]

SELECT Title, (SELECT (FirstName+' '+LastName)+',' FROM [Person].[Person] 
				WHERE BusinessEntityID in (5,6)
				for xml path('')) AS AllTheSingleLadies
FROM [Person].[Person] 
WHERE BusinessEntityID = 5 
ORDER BY FirstName+' '+LastName

