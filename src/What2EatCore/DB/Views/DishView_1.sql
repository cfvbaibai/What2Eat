USE What2Eat
GO

DROP VIEW DishView_1
GO

CREATE VIEW DishView_1 AS

SELECT
    D.Name,
    D.[Type],
    DT.Category1,
    DT.Category2,
    DT.Category3
FROM Dish AS D
INNER JOIN DishType AS DT ON D.[Type] = DT.ID

GO
