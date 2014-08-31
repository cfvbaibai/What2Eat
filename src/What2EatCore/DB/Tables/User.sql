USE What2Eat

DROP TABLE [User]

CREATE TABLE [User] (
    [UserId]        VARCHAR(32)     NOT NULL PRIMARY KEY,
    [NickName]      NVARCHAR(64)    NOT NULL,
    [Password]      VARCHAR(32)     NOT NULL,
    [Updated]       DATETIME2(7)    NOT NULL DEFAULT GETUTCDATE()
) ON [PRIMARY]
