REM Skript: hauptmenue.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM Hauptmenü zur Benutzung der Datenbank
REM

CL SCR

PROMPT Patientenverwaltungssystem
PROMPT
PROMPT Hauptmenue
PROMPT =============================
PROMPT
PROMPT
PROMPT (1) Datenbank-Struktur (erstellen)
PROMPT
PROMPT (2) Daten (manipulieren)
PROMPT
PROMPT (3) Daten (lesen)
PROMPT
PROMPT (0) Programm (beenden)
PROMPT
PROMPT
ACCEPT eingabe PROMPT "Ihre Eingabe: "

@&pfad.\&eingabe..sql


