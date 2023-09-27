REM Skript: Krankenkasse_hinzufuegen.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM interaktive Abfrage der Krankenkasse für einen neuen Patienten,
REM Gleichzeitig erfolgt die Abrechnung für die Behandlung,
REM wobei der Primärschlüssel automatisiert vergeben wird.
REM


ACCEPT K_Name PROMPT "Name der Krankenkasse: "
ACCEPT Abrechnung PROMPT "Abrechnung der Behandlung (float: NOT NULL): " DEFAULT NOT NULL


INSERT INTO t_Hausarzt ( Arzt_id                                            , A_Nachname   , Abrechnung )
   VALUES              ( (SELECT nvl(max(Arzt_id) +  1, 1) FROM t_Hausarzt), '&A_Nachname', (SELECT case WHEN '&Abrechnung' = 'NOT NULL' THEN NOT NULL ELSE '&Abrechnung' END FROM dual) );


COMMIT;

@&pfad\Manipulation\menue_manipulation.sql
