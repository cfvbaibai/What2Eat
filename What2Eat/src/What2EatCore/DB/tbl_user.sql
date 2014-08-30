USE What2Eat

DROP TABLE tbl_user

CREATE TABLE tbl_user (
    vc_user_id      VARCHAR(32)     NOT NULL PRIMARY KEY,
    nvc_nick_name   NVARCHAR(64)    NOT NULL,
    vc_password     VARCHAR(32)     NOT NULL,
    dt_updated      DATETIME        NOT NULL DEFAULT GETUTCDATE()
) ON [PRIMARY]
