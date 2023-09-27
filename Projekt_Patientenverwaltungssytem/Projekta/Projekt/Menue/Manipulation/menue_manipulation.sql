REM Skript: menue_manipulation.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM Menü zum Einfügen eines neuen Patienten bzw. Krankenkasse
REM

CL SCR

PROMPT Behandlung-Datenbank
PROMPT
PROMPT Menue - Manipulation
PROMPT =============================
PROMPT
PROMPT
PROMPT (1) Neuer Patient (Patientdaten_einfuegen)
PROMPT
PROMPT (2) Neue Krankenkasse (Krankenkassedaten_einfuegen)
PROMPT
PROMPT (3) Hausarzt (Behandlung)
PROMPT
PROMPT (0) Hauptmenü (zurueck)
PROMPT
PROMPT
ACCEPT eingabe PROMPT "Ihre Eingabe: "

@&pfad.\Manipulation\&eingabe..sql
