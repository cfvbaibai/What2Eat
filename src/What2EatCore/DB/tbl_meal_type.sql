USE What2Eat

DROP TABLE tbl_meal_type
CREATE TABLE tbl_meal_type (
    ti_id           TINYINT             NOT NULL,
    nvc_name        NVARCHAR(32)        NOT NULL,
    dt_updated      DATETIME            NOT NULL
) ON [PRIMARY]

GO

INSERT INTO tbl_meal_type VALUES (1, '早餐', GETUTCDATE())
INSERT INTO tbl_meal_type VALUES (2, '早午餐', GETUTCDATE())
INSERT INTO tbl_meal_type VALUES (3, '午餐', GETUTCDATE())
INSERT INTO tbl_meal_type VALUES (4, '下午茶', GETUTCDATE())
INSERT INTO tbl_meal_type VALUES (5, '晚餐', GETUTCDATE())
INSERT INTO tbl_meal_type VALUES (6, '夜宵', GETUTCDATE())