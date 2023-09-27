REM Skript: Behandlung_hinzufuegen.sql
REM
REM Autor: Sultan und Mahmoud
REM Erstellungsdatum: 31.05.2023
REM
REM Inhalt:
REM interaktive Abfrage der Krankheit für den Patienten und bei wem behandelt wurde
REM

REM Hausarzt

SELECT Arzt_id, A_Nachname
  FROM t_Hausarzt;

ACCEPT A_Nachname PROMPT "Nachname des Hausarztes: "


REM Patient

PROMPT
PROMPT

SELECT Patient_id, P_Nachname
  FROM t_Patient;

ACCEPT P_Nachname PROMPT "Nachname des Patienten: "


INSERT INTO t_Behandeln ( Patient_id                                                    , Arzt_id)
   VALUES               ( (SELECT Patient_id FROM t_Patient WHERE P_Nachname = '&P_Nachname'), (SELECT Arzt_idFROM t_Hausarzt WHERE A_Nachname = '&A_Nachname'));

COMMIT;

@&pfad\Manipulation\menue_manipulation.sql
