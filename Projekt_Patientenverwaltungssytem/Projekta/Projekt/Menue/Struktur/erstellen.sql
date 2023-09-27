REM Skript: tabellen.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM 
REM
REM Inhalt:
REM Löschen und Erstellen der Tabellen
REM 

SET ECHO ON
CL SCR

DROP TABLE t_Behandlung;

DROP TABLE t_Versicherungsart;

DROP TABLE t_Hausarzt;

DROP TABLE t_Patient;

DROP TABLE t_Krankenkasse;


REM Tabellen erstellen
REM ==================

CREATE TABLE t_Krankenkasse
(
  Krankenkasse_Id       integer       CONSTRAINT pk_Krankenkasse_Id    PRIMARY KEY,
  K_Name                varchar2(200) CONSTRAINT uni_K_name UNIQUE CONSTRAINT nn_K_name  NOT NULL,
  K_Hauptsitz           varchar2(200)
);

CREATE TABLE t_Patient
(
  Patient_id            integer      CONSTRAINT pk_Patient_id    PRIMARY KEY,
  P_Nachname            varchar2(50) CONSTRAINT uni_P_Nachname UNIQUE CONSTRAINT nn_P_Nachname  NOT NULL,
  P_Vorname             varchar2(100),
  Telefonnummer         int,
  Geburtsdatum          date
);

CREATE TABLE t_Versicherungsart
(
  K_Versicherungsart    varchar2(75),
  Krankenkasse_Id       integer       CONSTRAINT fk_K_Versicherungsart_KrankenkasseId REFERENCES t_Krankenkasse (Krankenkasse_Id),
  CONSTRAINT pk_K_Versicherungsart PRIMARY KEY (K_Versicherungsart, Krankenkasse_Id)
);

CREATE TABLE t_Hausarzt
(
  Arzt_id               integer       CONSTRAINT pk_Arzt_id PRIMARY KEY,
  A_Nachname            varchar2(100) CONSTRAINT uni_A_Nachname UNIQUE CONSTRAINT nn_A_Nachname  NOT NULL,
  Abrechnung            varchar2(500),
  Krankenkasse_Id       integer       CONSTRAINT fk_Hausarzt_Krankenkasse_id REFERENCES t_Krankenkasse(Krankenkasse_Id)
);

CREATE TABLE t_Behandlung
(
  Patient_id            integer CONSTRAINT fk_Behandlung_Patient_id     REFERENCES t_Patient(Patient_id),
  Arzt_id               int     CONSTRAINT fk_Behandlung_Arzt_id REFERENCES t_Hausarzt(Arzt_id),
  Diagnose              varchar2(500),
  P_Nachname            varchar2(100),
  P_Vorname             varchar2(100),
  CONSTRAINT pk_t_Behandlung_Patient_id PRIMARY KEY (Patient_ID)
);

pause weiter 

DESCRIBE t_Krankenkasse;
DESCRIBE t_Versicherungsart;
DESCRIBE t_Patient;
DESCRIBE t_Hausarzt;
DESCRIBE t_Behandlung;


@&pfad.\Struktur\menue_struktur.sql