USE What2Eat
GO

DROP VIEW MealView_1
GO

CREATE VIEW MealView_1 AS

SELECT
    M.ID,
    M.MealTypeId,
    MT.Name AS MealTypeName,
    M.DishName AS DishName,
    D.[Type] AS DishTypeId,
    DT.Category1,
    DT.Category2,
    DT.Category3
FROM Meal AS M
INNER JOIN MealType AS MT ON M.MealTypeId = MT.ID
LEFT OUTER JOIN Dish AS D ON M.DishName = D.Name
LEFT OUTER JOIN DishType AS DT ON D.[Type] = DT.ID

GO
