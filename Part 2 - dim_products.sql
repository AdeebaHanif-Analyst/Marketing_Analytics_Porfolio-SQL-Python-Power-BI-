--Query to categorize the prices of Products as High,Moderate,Low



SELECT
	 ProductID,		--Selects the unique identifier for each product
	 ProductName,		--Selects the name of the product
	 Price,		--Selects the price for each Product
	
     CASE		--case used to create category
	 WHEN Price<50 THEN 'Low'		--If price is less than 50, categorize it as Low
	 WHEN Price BETWEEN 50 AND 200 THEN 'Moderate'		--If price is between 50-200 categorize it as Moderate
	 ELSE 'High'		--price greater than 200,caegorize it as High
	 END		--categorization ends here
	 AS PriceCategory		--name the new column as PriceCategory

FROM dbo.products			--Source Table from where to pick data
