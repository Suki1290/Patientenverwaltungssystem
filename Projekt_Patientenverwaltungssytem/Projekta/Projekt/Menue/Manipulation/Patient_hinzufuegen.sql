REM Skript: Patient_hinzufuegen.sql
REM
REM Autor: Sultan Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM interaktive Abfrage Patient_hinzufuegen,
REM wobei der Primärschlüssel automatisiert vergeben wird.
REM


ACCEPT P_Nachname PROMPT "Nachname des Patienten: "
ACCEPT P_Vorname PROMPT "Vorname des Patienten (varchar: 100 ): " DEFAULT 100

INSERT INTO t_Patient ( Patient_id, P_Nachname, P_Vorname)
   VALUES          ( (SELECT nvl(max(Patient_id) +  1, 1) FROM t_Patient), '&P_Nachname', '&P_Vorname');

COMMIT;

pause weiter

@&pfad\Manipulation\menue_manipulation.sql