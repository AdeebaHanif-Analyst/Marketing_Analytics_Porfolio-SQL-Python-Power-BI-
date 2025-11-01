--Query to handle whitespaces in the ReviewText column

SELECT
	  ReviewID,
	  CustomerID,
	  ProductID,
	  ReviewDate,
	  Rating,
	  REPLACE(ReviewText,'  ',' ') as ReviewText
FROM dbo.customer_reviews