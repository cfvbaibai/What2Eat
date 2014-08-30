USE What2Eat

DROP TABLE tbl_dish_type
CREATE TABLE tbl_dish_type (
    si_id           SMALLINT            NOT NULL PRIMARY KEY,
    nc_cat_1        NCHAR(8)            NOT NULL,
    nc_cat_2        NCHAR(8)            NOT NULL,
    nc_cat_3        NCHAR(8)            NOT NULL,
    dt_updated      DATETIME            NOT NULL DEFAULT GETUTCDATE()
) ON [PRIMARY]

GO

-- See http://www.xiachufang.com/category/
INSERT INTO tbl_dish_type VALUES (1, '甜点', '烘培', '蛋糕', GETUTCDATE())
INSERT INTO tbl_dish_type VALUES (2, '甜点', '烘培', '饼干', GETUTCDATE())
INSERT INTO tbl_dish_type VALUES (3, '甜点', '烘培', '自制面包', GETUTCDATE())
INSERT INTO tbl_dish_type VALUES (4, '甜点', '烘培', '曲奇', GETUTCDATE())
INSERT INTO tbl_dish_type VALUES (5, '甜点', '烘培', '披萨', GETUTCDATE())
INSERT INTO tbl_dish_type VALUES (6, '甜点', '烘培', '蛋挞', GETUTCDATE())
INSERT INTO tbl_dish_type VALUES (7, '甜点', '烘培', '慕斯', GETUTCDATE())
-- TODO:
GO

CREATE NONCLUSTERED INDEX IX_category ON tbl_dish_type (nc_cat_1, nc_cat_2, nc_cat_3)
GO