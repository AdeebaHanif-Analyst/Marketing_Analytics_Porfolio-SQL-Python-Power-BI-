--Query to clean and normalize the customer_engagement_table


SELECT
	  EngagementID,
	  ContentID,
	  UPPER(ContentType) AS ContentType, --standardizing the whole column 
	  Likes,		--selects the likes column
	  FORMAT(Convert(DATE,EngagementDate),'dd.mm.yyyy') as EngagementDate,
	  CampaignID,
	  ProductID,
	  LEFT(ViewsClicksCombined,CHARINDEX('-',ViewsClicksCombined)-1) as Views, --left(select column,5-1) 
	  RIGHT(ViewsClicksCombined,len(ViewsClicksCombined)-CHARINDEX('-',ViewsClicksCombined)) as Clicks --right(select column,8-5)
FROM 
dbo.engagement_data
WHERE
ContentType!='newsletter' --we dont want newsletter in our analysis as it wont be helpful
