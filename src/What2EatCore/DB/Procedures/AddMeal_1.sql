USE What2Eat

DROP PROCEDURE AddMeal_1
GO

CREATE PROCEDURE AddMeal_1 (
    @UserId NVARCHAR(64),
    @MealDate DATETIME2(7),
    @MealTypeId TINYINT,
    @DishName NVARCHAR(64)
) AS
BEGIN
    DECLARE @MaxId INT
    DECLARE @MealDateAccurate DATETIME2(7)

    SET @MealDateAccurate = DATETIME2FROMPARTS(
        YEAR(@MealDate), MONTH(@MealDate), DAY(@MealDate), 0, 0, 0, 0, 0)

    BEGIN TRANSACTION

    IF NOT EXISTS (
        SELECT 'x' FROM Meal
        WHERE
            UserId = @UserId AND
            MealDate = @MealDateAccurate AND
            MealTypeId = @MealTypeId AND
            DishName = @DishName
    )
    BEGIN
        SELECT @MaxId = ISNULL(MAX(ID), 0) FROM Meal
        INSERT INTO Meal VALUES (
            @MaxID + 1, @UserId, @MealDateAccurate, @MealTypeId, @DishName, GETUTCDATE())
    END

    COMMIT TRANSACTION
END
GO