REM Skript: start.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM interaktive Anmeldung an die Datenbank,
REM interaktive Eingabe des Projektpfades und
REM Aufrufen des Hauptmenüs: hauptmenue.sql
REM 

SET ECHO OFF
CL SCR


REM Anmelden

ACCEPT benutzername PROMPT "Eingabe des Benutzernamens (Default: HR1): " DEFAULT HR1

ACCEPT passwort PROMPT "Eingabe des Passwortes (Default: oracle_4U): " DEFAULT oracle_4U HIDE

ACCEPT datenbank PROMPT "Eingabe der Datenbank (Default: XEPDB1): " DEFAULT XEPDB1

ACCEPT rechner PROMPT "Eingabe des Rechners (Default: Sultan): " DEFAULT Sultan

CONNECT &benutzername/&passwort@&rechner/&datenbank


REM Eingabe des Projektpfades

ACCEPT pfad PROMPT "Eingabe des Projektpfades (DEFAULT: C:\Projekta\Projekt\Menue) " DEFAULT C:\Projekta\Projekt\Menue


REM Menü aufrufen

@&pfad.\hauptmenue.sql
