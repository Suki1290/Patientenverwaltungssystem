REM Skript: Patientendaten_anzeigen.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM Ausgabe alle Patienten
REM

CL SCR

PROMPT Patienten-Datenbank
PROMPT
PROMPT Menue - Patientendaten ausgeben
PROMPT =============================
PROMPT

SELECT Patient_id, P_Vorname, P_Nachname, Geburtsdatum, Telefonnummer 
  FROM t_Patient;

PAUSE ENTER drücken

@&pfad.\Lesen\menue_lesen.sql
