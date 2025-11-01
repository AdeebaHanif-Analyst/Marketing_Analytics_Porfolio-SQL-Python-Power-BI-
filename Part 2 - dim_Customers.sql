--Query to map the Country and City of each Customer using Left Join connecting two tables


SELECT 
	cc.CustomerID,		--select customerID from cc table
	cc.CustomerName,	--select customerName from cc table
	cc.Gender,		--select Gender from cc table
	cc.Age,		--select Age from cc table
	gg.Country,		--selects country from gg table
	gg.City			--selects City from gg table
FROM
	dbo.customers as cc		--creating alias of customers table as cc
LEFT JOIN
	dbo.geography as gg		--creating alias of geography table as gg
ON
cc.GeographyID=gg.GeographyID  --mapping two based using unique identifier i.e GeographyID
	