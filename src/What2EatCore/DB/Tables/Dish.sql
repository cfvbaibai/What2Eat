USE What2Eat

DROP TABLE Dish
CREATE TABLE Dish (
    [Name]          NVARCHAR(64)        NOT NULL PRIMARY KEY,
    [Type]          SMALLINT            NOT NULL,
    [Updated]       DATETIME2(7)        NOT NULL
) ON [PRIMARY]
