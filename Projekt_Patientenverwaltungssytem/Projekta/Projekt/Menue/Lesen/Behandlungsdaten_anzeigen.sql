REM Skript: Behandlungsdaten_anzeigen.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM Ausgabe alle Behandlungen 
REM

CL SCR

PROMPT Behandlung-Datenbank
PROMPT
PROMPT Menue - Behandlungsdaten
PROMPT =============================
PROMPT

SELECT patient_id , Arzt_id, P_Vorname, P_Nachname , Diagnose
  FROM t_Behandlung;

PAUSE ENTER drücken

@&pfad.\Lesen\menue_lesen.sql
