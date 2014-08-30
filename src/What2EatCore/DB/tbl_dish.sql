USE What2Eat

DROP TABLE tbl_dish
CREATE TABLE tbl_dish (
    guii_id         UNIQUEIDENTIFIER    NOT NULL PRIMARY KEY,
    nvc_name        NVARCHAR(64)        NOT NULL,
    si_type         SMALLINT            NOT NULL,
    dt_updated      DATETIME            NOT NULL
) ON [PRIMARY]
