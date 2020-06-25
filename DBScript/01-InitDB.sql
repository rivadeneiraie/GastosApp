
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'Gastos')
    DROP DATABASE Gastos
GO

CREATE DATABASE Gastos
GO

USE Gastos
GO

CREATE TABLE Security_User
(
    id          INT             NOT NULL,
    userName    VARCHAR(100)    NOT NULL,
    userLogin   VARCHAR(50)     NOT NULL,
    userPass    VARCHAR(250)    NOT NULL,
    mail        VARCHAR(100)    NOT NULL,
    active      BIT             NOT NULL,
    dateCreate  DATETIME        NOT NULL,
    CONSTRAINT pk_security_user PRIMARY KEY (id),
    CONSTRAINT cons_unique_user UNIQUE (id,userLogin)
)
GO

CREATE TABLE Category_Expenses
(
    id          INT             NOT NULL,
    expenses    VARCHAR(50)     NOT NULL,
    descExp     VARCHAR(200)    NOT NULL,
    CONSTRAINT pk_Category_Expenses PRIMARY KEY (id)
)
GO


