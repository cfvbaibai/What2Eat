USE What2Eat

DROP TABLE DishType
CREATE TABLE DishType (
    ID              SMALLINT            NOT NULL PRIMARY KEY,
    Category1       NVARCHAR(8)         NOT NULL,
    Category2       NVARCHAR(8)         NOT NULL,
    Category3       NVARCHAR(8)         NOT NULL,
    Updated         DATETIME2(7)        NOT NULL DEFAULT GETUTCDATE()
) ON [PRIMARY]

GO

-- See http://www.xiachufang.com/category/
INSERT INTO DishType VALUES (1, '甜点', '烘培', '蛋糕', GETUTCDATE())
INSERT INTO DishType VALUES (2, '甜点', '烘培', '饼干', GETUTCDATE())
INSERT INTO DishType VALUES (3, '甜点', '烘培', '自制面包', GETUTCDATE())
INSERT INTO DishType VALUES (4, '甜点', '烘培', '曲奇', GETUTCDATE())
INSERT INTO DishType VALUES (5, '甜点', '烘培', '披萨', GETUTCDATE())
INSERT INTO DishType VALUES (6, '甜点', '烘培', '蛋挞', GETUTCDATE())
INSERT INTO DishType VALUES (7, '甜点', '烘培', '慕斯', GETUTCDATE())

-- TODO:
GO

CREATE NONCLUSTERED INDEX IX_category ON DishType (Category1, Category2, Category3)
GO