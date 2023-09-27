REM Skript: menue_struktur.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM Menü zur Verwaltung der Datenbankstruktur und
REM dem Einfügen von Test-Datensätzen
REM

CL SCR

PROMPT Behandlung-Datenbank
PROMPT
PROMPT Menue - Datenbankstruktur
PROMPT =============================
PROMPT
PROMPT
PROMPT (1) Tabellen (erstellen)
PROMPT
PROMPT (2) Test-Datensätze (einfuegen)
PROMPT
PROMPT (0) Hauptmenü (zurueck)
PROMPT
PROMPT
ACCEPT eingabe PROMPT "Ihre Eingabe: "

@&pfad.\Struktur\&eingabe..sql

