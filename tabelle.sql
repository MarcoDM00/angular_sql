CREATE TABLE DEMA_FB_Post (
   Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
   Autore VARCHAR(50) NOT NULL,
   Testo VARCHAR(255) NOT NULL,
   [Like] INT NOT NULL);

ALTER TABLE [dbo].[DEMA_FB_Post] ADD  CONSTRAINT [DF_DEMA_FB_Post_Like]  DEFAULT ((0)) FOR [Like];

CREATE TABLE DEMA_FB_Commenti (
   Id INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
   IdPost INT NOT NULL FOREIGN KEY REFERENCES DEMA_FB_Post(Id),
   Autore VARCHAR(50) NOT NULL,
   Testo VARCHAR(255) NOT NULL);