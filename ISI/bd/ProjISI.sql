use ProjISI

create table transformation_logs(
ID_BATCH int NOT NULL,
CHANNEL_ID int NOT NULL,
TRANSNAME varchar(255) NOT NULL,
[STATUS] varchar(255) NOT NULL,
LINES_READ bigint NOT NULL,
LINES_WRITTEN bigint NOT NULL,
LINES_UPDATED bigint NOT NULL,
LINES_INPUT bigint NOT NULL,
LINES_OUTPUT bigint NOT NULL,
LINES_REJECTED bigint NOT NULL,
ERRORS bigint NOT NULL,
STARTDATE datetime NOT NULL,
ENDDATE datetime NOT NULL,
LOGDATE datetime NOT NULL,
DEPDATE datetime NOT NULL,
REPLAYDATE datetime NOT NULL,
LOG_FIELD varchar(255) NOT NULL
);

create table STEP_logs(
ID_BATCH int NOT NULL,
CHANNEL_ID int NOT NULL,
LOG_DATE datetime NOT NULL,
TRANSNAME varchar(255) NOT NULL,
STEPNAME varchar(255) NOT NULL,
STEP_COPY bigint NOT NULL,
LINES_READ bigint NOT NULL,
LINES_WRITTEN bigint NOT NULL,
LINES_UPDATED bigint NOT NULL,
LINES_INPUT bigint NOT NULL,
LINES_OUTPUT bigint NOT NULL,
LINES_REJECTED bigint NOT NULL,
ERRORS bigint NOT NULL
);

create table Performance_logs(
ID_BATCH int NOT NULL,
SEQ_NR bigint NOT NULL,
LOGDATE datetime NOT NULL,
TRANSNAME varchar(255) NOT NULL,
STEPNAME varchar(255) NOT NULL,
STEP_COPY bigint NOT NULL,
LINES_READ bigint NOT NULL,
LINES_WRITTEN bigint NOT NULL,
LINES_UPDATED bigint NOT NULL,
LINES_INPUT bigint NOT NULL,
LINES_OUTPUT bigint NOT NULL,
LINES_REJECTED bigint NOT NULL,
ERRORS bigint NOT NULL,
INPUT_BUFFER_ROWS bigint NOT NULL,
OUTPUT_BUFFER_ROWS bigint NOT NULL
);

create table LoggingChannel_logs(
ID_BATCH int NOT NULL,
CHANNEL_ID int NOT NULL,
LOG_DATE datetime NOT NULL,
LOGGING_OBJECT_TYPE	varchar(255) NOT NULL,
[OBJECT_NAME] varchar(255) NOT NULL,
OBJECT_COPY	varchar(255) NOT NULL,
REPOSITORY_DIRECTORY varchar(255) NOT NULL,
[FILENAME] varchar(255) NOT NULL,
[OBJECT_ID] int NOT NULL,
OBJECT_REVISION	varchar(255) NOT NULL,
PARENT_CHANNEL_ID int NOT NULL,
ROOT_CHANNEL_ID	int NOT NULL
);

create table Metrics_logs(
ID_BATCH int NOT NULL,
CHANNEL_ID int NOT NULL,
LOG_DATE datetime NOT NULL,
METRICS_DATE datetime NOT NULL,
METRICS_CODE varchar(255) NOT NULL,
METRICS_DESCRIPTION	varchar(255) NOT NULL,
METRICS_SUBJECT	varchar(255),
METRICS_TYPE varchar(255) NOT NULL,
METRICS_VALUE bigint NOT NULL
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


