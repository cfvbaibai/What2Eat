USE What2Eat

DROP TABLE tbl_meal
CREATE TABLE tbl_meal (
    guid_id         UNIQUEIDENTIFIER    NOT NULL PRIMARY KEY,
    vc_user_id      VARCHAR(32)         NOT NULL,
    ti_meal_type    TINYINT             NOT NULL,
    i_dish_id       INT                 NOT NULL,
    dt_updated      DATETIME            NOT NULL
) ON [PRIMARY]

GO

