use ProjISI

create table transformation_logs(
ID_BATCH int ,
CHANNEL_ID varchar(255),
TRANSNAME varchar(255) ,
[STATUS] varchar(255) ,
LINES_READ varchar(255),
LINES_WRITTEN varchar(255),
LINES_UPDATED varchar(255),
LINES_INPUT varchar(255),
LINES_OUTPUT varchar(255),
LINES_REJECTED varchar(255),
ERRORS varchar(255),
STARTDATE datetime ,
ENDDATE datetime,
LOGDATE datetime ,
DEPDATE datetime ,
REPLAYDATE datetime ,
LOG_FIELD varchar(max)
);

create table STEP_logs(
ID_BATCH int ,
CHANNEL_ID varchar(255),
LOG_DATE datetime ,
TRANSNAME varchar(255) ,
STEPNAME varchar(255) ,
STEP_COPY varchar(255),
LINES_READ varchar(255),
LINES_WRITTEN varchar(255),
LINES_UPDATED varchar(255),
LINES_INPUT varchar(255),
LINES_OUTPUT varchar(255),
LINES_REJECTED varchar(255),
ERRORS varchar(255)
);

create table Performance_logs(
ID_BATCH int ,
SEQ_NR varchar(255),
LOGDATE datetime ,
TRANSNAME varchar(255) ,
STEPNAME varchar(255),
STEP_COPY varchar(255),
LINES_READ varchar(255),
LINES_WRITTEN varchar(255),
LINES_UPDATED varchar(255),
LINES_INPUT varchar(255),
LINES_OUTPUT varchar(255),
LINES_REJECTED varchar(255),
ERRORS varchar(255),
INPUT_BUFFER_ROWS varchar(255),
OUTPUT_BUFFER_ROWS varchar(255)
);

create table LoggingChannel_logs(
ID_BATCH int,
CHANNEL_ID varchar(255),
LOG_DATE datetime,
LOGGING_OBJECT_TYPE	varchar(255),
[OBJECT_NAME] varchar(255),
OBJECT_COPY	varchar(255),
REPOSITORY_DIRECTORY varchar(255),
[FILENAME] varchar(255),
[OBJECT_ID] varchar(255),
OBJECT_REVISION	varchar(255),
PARENT_CHANNEL_ID varchar(255),
ROOT_CHANNEL_ID	varchar(255)
);

create table Metrics_logs(
ID_BATCH int NOT NULL,
CHANNEL_ID varchar(255),
LOG_DATE datetime,
METRICS_DATE datetime,
METRICS_CODE varchar(255),
METRICS_DESCRIPTION	varchar(255),
METRICS_SUBJECT	varchar(255),
METRICS_TYPE varchar(255),
METRICS_VALUE varchar(255)
);

create table Utilizadores(
IdUtilizador int IDENTITY(1,1) primary key,
Nome varchar(255) NOT NULL,
Email varchar(255) NOT NULL,
Contacto varchar(255) NOT NULL,
Pais varchar(255) NOT NULL,
Categoria varchar(255) NOT NULL,
Ativo bit NOT NULL DEFAULT 1
);

INSERT INTO Utilizadores(Nome, Email, Contacto, Pais, Categoria, Ativo)
VALUES
('Ana Ferreira', 'ana.ferreira@gmail.com', '912345678', 'Portugal', 'red', 0),
('João Martins', 'joao.martins@hotmail.com', '934567890', 'France', 'white', 0),
('Maria Oliveira', 'maria.oliveira@gmail.com', '965432198', 'Italy', 'red', 0),
('Pedro Sousa', 'pedro.sousa@email.com', '918765432', 'Spain', 'sparkling', 0),
('Inês Rocha', 'ines.rocha@email.com', '937654321', 'United States', 'white', 0),
('Ricardo Gomes', 'ricardo.gomes@gmail.com', '915678234', 'Argentina', 'red', 0),
('Carla Ribeiro', 'carla.ribeiro@hotmail.com', '963482716', 'Portugal', 'sparkling', 0),
('Tiago Monteiro', 'tiago.monteiro@gmail.com', '928374651', 'France', 'red', 0),
('Sofia Nunes', 'sofia.nunes@email.com', '914726391', 'Italy', 'white', 0),
('Miguel Costa', 'miguel.costa@hotmail.com', '931847265', 'Spain', 'rose', 0),
('Hugo Monteiro', 'projisi@hotmail.com', '123456789', 'Italy', 'white', 1);
