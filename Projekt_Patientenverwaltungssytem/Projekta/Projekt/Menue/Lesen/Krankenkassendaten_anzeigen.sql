REM Skript: Behandlung.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM Ausgabe aller Patienten-, Krankenkassen- und Hausarztdaten
REM

CL SCR

PROMPT Patientenverwaltungssystem-Datenbank
PROMPT
PROMPT Menue - Allgemeine Information zur Krankenkasse
PROMPT ==================================
PROMPT


SELECT Krankenkasse_Id, K_Name, K_Hauptsitz
  FROM t_Krankenkasse;

PAUSE ENTER drücken

@&pfad.\Lesen\menue_lesen.sql
