REM Skript: menue_lesen.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM Menü zur Ausgabe Patientendaten, Behandlungsdaten und
REM Krankenkassendaten 
REM

CL SCR

PROMPT Patientenverwaltungssystem-Datenbank
PROMPT
PROMPT Menue - Daten lesen
PROMPT =============================
PROMPT
PROMPT
PROMPT (1) Patientendaten (Patientendaten_anzeigen)
PROMPT
PROMPT (2) Behandlung (behandeln)
PROMPT
PROMPT (3) Krankenkassen (Krankenkassendaten_anzeigen.sql)
PROMPT
PROMPT (0) Hauptmenü (zurueck)
PROMPT
PROMPT
ACCEPT eingabe PROMPT "Ihre Eingabe: "

@&pfad.\Lesen\&eingabe..sql
