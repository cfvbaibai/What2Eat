USE What2Eat

DROP TABLE Meal
CREATE TABLE Meal (
    ID              INT                 NOT NULL PRIMARY KEY,
    UserId          VARCHAR(32)         NOT NULL,
    MealDate        DATETIME2(7)        NOT NULL,
    MealTypeId      TINYINT             NOT NULL,
    DishName        NVARCHAR(64)        NOT NULL,
    Updated         DATETIME2(7)        NOT NULL
) ON [PRIMARY]


GO

