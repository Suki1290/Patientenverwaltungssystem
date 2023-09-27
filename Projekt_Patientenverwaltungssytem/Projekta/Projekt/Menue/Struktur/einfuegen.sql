REM Skript: einfuegen.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM Löschen und Einfügen von Test-Datensätzen
REM 


REM Tabellen leeren
REM ================

DELETE FROM t_Behandlung;

DELETE FROM t_Patient;

DELETE FROM t_Krankenkasse;

DELETE FROM t_Hausarzt;

COMMIT;



REM Test-Datensätze einfügen
REM ========================

REM Patienten

INSERT INTO t_Patient ( Patient_id, P_Nachname, P_Vorname , Telefonnummer , Geburtsdatum)
   VALUES          ( 1, 'Mueller', 'Max' , '0192637378' , '25.01.1990');

INSERT INTO t_Patient ( Patient_id , P_Nachname , P_Vorname , Telefonnummer , Geburtsdatum)
   VALUES          ( 2, 'Sami', 'Jacoub' , '0192637378' , '25.01.1990');

INSERT INTO t_Patient ( Patient_id, P_Nachname, P_Vorname , Telefonnummer , Geburtsdatum)
   VALUES          ( 3, 'Schmidt' , 'Sabina' , '0192637378' , '25.01.1990');

INSERT INTO t_Patient ( Patient_id, P_Nachname, P_Vorname , Telefonnummer , Geburtsdatum)
   VALUES          ( 4, 'Noerbert' , 'Mayer' , '0192637378' , '25.01.1990');




REM Hausarzt

INSERT INTO t_Hausarzt ( Arzt_id, A_Nachname, Abrechnung)
   VALUES              ( 1, 'Mueller', NULL);

INSERT INTO t_Hausarzt ( Arzt_id, A_Nachname, Abrechnung)
   VALUES              ( 2, 'Sami', 'Patient hat Fieber');

INSERT INTO t_Hausarzt ( Arzt_id, A_Nachname, Abrechnung)
   VALUES              ( 3, 'Schmidt', 'Patient hat Rückenschmerzen');

   
   
   REM Krankenkasse_Id

INSERT INTO t_Krankenkasse ( Krankenkasse_Id,  K_Name, K_Hauptsitz)
   VALUES              ( 1, 'AOK', 'Niedersachsen');

INSERT INTO t_Krankenkasse ( Krankenkasse_Id,  K_Name, K_Hauptsitz)
   VALUES              ( 2, 'IKK', 'Berlin');

INSERT INTO t_Krankenkasse ( Krankenkasse_Id,  K_Name, K_Hauptsitz)
   VALUES              ( 3, 'DAK', 'Stuttgart');



REM Behandlung

INSERT INTO t_Behandlung ( Patient_id, Arzt_id , P_Nachname , P_Vorname , Diagnose)
   VALUES               ( 1, 1 , 'Muller' , 'Max' , 'Diabetis');

INSERT INTO t_Behandlung ( Patient_id, Arzt_id , P_Nachname , P_Vorname , Diagnose)
   VALUES               ( 2, 1 , 'Sami', 'Jacoub' , 'Corona');

INSERT INTO t_Behandlung ( Patient_id, Arzt_id , P_Nachname , P_Vorname , Diagnose)
   VALUES               ( 3, 1, 'Schmidt' , 'Sabina' , 'Bandscheibenvorfall');

COMMIT;

pause weiter

@&pfad.\Struktur\menue_struktur.sql





