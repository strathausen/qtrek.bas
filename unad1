' UNAD 1.3  Philipp Strathausen




'                   =/\=  VIEL SPASS beim Spiel !!!  =/\=
'       > > Bitte drÅcken Sie die  TASTE F5  um das SPIEL zu STARTEN. < <


'                    Um QBasic zu BEENDEN mÅssen Sie
'              die Tasten  Alt, "D" und "B"  nacheinander drÅcken.





































DECLARE SUB logo ()
DECLARE SUB LogoLoose ()
DECLARE SUB Vorspann ()
DECLARE SUB menu ()

DECLARE SUB Crash ()
DECLARE SUB Explosion ()
DECLARE SUB Sterne ()

DECLARE SUB Anzeige1a ()
DECLARE SUB Anzeige1b ()
DECLARE SUB Anzeige2a ()
DECLARE SUB Anzeige2b ()
DECLARE SUB Anzeige3a ()
DECLARE SUB Anzeige3b ()
DECLARE SUB Anzeige4a ()
DECLARE SUB Anzeige4b ()
DECLARE SUB Anzeige21a ()
DECLARE SUB Anzeige21b ()

DECLARE SUB Sicherung1 ()
DECLARE SUB Sicherung2 ()
DECLARE SUB Sicherung3 ()
DECLARE SUB Sicherung4 ()
DECLARE SUB Sicherung21 ()

DECLARE SUB Enterprise1 ()
DECLARE SUB Enterprise2 ()
DECLARE SUB Defiant ()
DECLARE SUB DS9 ()
DECLARE SUB Voyager ()
DECLARE SUB Klingonen ()
DECLARE SUB Romulaner ()
DECLARE SUB Dominion ()
DECLARE SUB Borg ()
DECLARE SUB Spieler1 ()
DECLARE SUB Spieler2 ()

DECLARE SUB Copyrights ()
DECLARE SUB Anleitung ()
DECLARE SUB Code ()
DECLARE SUB highscores ()

DECLARE SUB Einleitung1 ()
DECLARE SUB Start1 ()
DECLARE SUB Ueberleitung12 ()
DECLARE SUB Start2 ()
DECLARE SUB Ueberleitung23 ()
DECLARE SUB Start3 ()
DECLARE SUB Ueberleitung34 ()
DECLARE SUB Start4 ()
DECLARE SUB Happyend ()
DECLARE SUB Ende ()

DECLARE SUB Start2Spieler ()

DECLARE SUB loose1 ()
DECLARE SUB loose2 ()
DECLARE SUB loose3 ()
DECLARE SUB loose4 ()

'Level 1 - 3
DIM SHARED xr, yr, xf, yf, fd, wnd, sld, absh, pkt, gnr, test3, k3, shuttle, shx, shy, shex, wber, xw, yw, w

'Level 4
DIM SHARED b0, b1, b2, b3, b4, b5, z1, z2, z3, test4
DIM SHARED xfFa, yfFa, fDurch4fa, FireBorga, fBer4fa, a
DIM SHARED xfFb, yfFb, fDurch4fb, FireBorgb, fBer4fb, B
DIM SHARED xffc1, xffc2, xffc3, xffc4, xffc5, yffc1, yffc2, yffc3, yffc4, yffc5, fDurch4fc, FireBorgc, fBer4fc, c, k4a

'2 Spieler
DIM SHARED xr1, yr1, xr2, yr2, K5, wnd1, wnd2, sld1, sld2, absh1, absh2, pkt1, pkt2

CLS
SCREEN 12

' Lîschen des Tastenpuffers
DO
u$ = INKEY$
LOOP UNTIL u$ = ""


' Umgehung des Vorspanns
LOCATE 13, 31: PRINT "Vorspann? (J/N)"

DO
u$ = INKEY$  ' > LCASE$ wandelt alle Zeichen in Kleinbuchstaben um
IF LCASE$(u$) = "n" OR u$ = " " OR u$ = CHR$(27) THEN GOTO u
LOOP UNTIL LCASE$(u$) = "y" OR LCASE$(u$) = "j"

Vorspann

u:
menu

SUB Anleitung
Aa:
CLS : SCREEN 12: m = 10
CIRCLE (320, 225), 201, 11
CIRCLE (320, 225), 200, 1
PAINT (320, 225), 1, 1
CIRCLE (320, 225), 151, 11
CIRCLE (320, 225), 150, 0
PAINT (320, 225), 0, 0
COLOR 14: LOCATE 8, 35:  PRINT "⁄ƒƒƒƒƒƒƒƒƒƒƒø"
COLOR 14: LOCATE 9, 35:  PRINT "≥ Anleitung ≥"
COLOR 14: LOCATE 10, 35: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒŸ"
COLOR 11: LOCATE 28, 36:  PRINT "ESC -> Menu"
ab:
DO
a$ = INKEY$
IF a$ = CHR$(0) + CHR$(75) THEN m = m - 1
IF a$ = CHR$(0) + CHR$(72) THEN m = m - 1
IF a$ = CHR$(0) + CHR$(80) THEN m = m + 1
IF a$ = CHR$(0) + CHR$(77) THEN m = m + 1
IF a$ = CHR$(27) THEN menu
IF a$ = "e" THEN END
IF a$ = " " OR a$ = CHR$(13) THEN GOTO Ae
IF m <= 0 THEN m = 6
IF m >= 7 THEN m = 1
IF m = 1 THEN : LINE (255, 170)-(390, 195), 10, B: LOCATE 12, 38: COLOR 11: PRINT "Level 1":       Ml = 1:  ELSE LOCATE 12, 38: COLOR 3: PRINT "Level 1":       LINE (255, 170)-(390, 195), 2, B
IF m = 2 THEN : LINE (255, 202)-(390, 227), 10, B: LOCATE 14, 38: COLOR 11: PRINT "Level 2":       Ml = 2:  ELSE LOCATE 14, 38: COLOR 3: PRINT "Level 2":       LINE (255, 202)-(390, 227), 2, B
IF m = 3 THEN : LINE (255, 234)-(390, 259), 10, B: LOCATE 16, 38: COLOR 11: PRINT "Level 3":       Ml = 3:  ELSE LOCATE 16, 38: COLOR 3: PRINT "Level 3":       LINE (255, 234)-(390, 259), 2, B
IF m = 4 THEN : LINE (255, 266)-(390, 291), 10, B: LOCATE 18, 38: COLOR 11: PRINT "Level 4":       Ml = 4:  ELSE LOCATE 18, 38: COLOR 3: PRINT "Level 4":       LINE (255, 266)-(390, 291), 2, B
IF m = 5 THEN : LINE (255, 298)-(390, 323), 10, B: LOCATE 20, 36: COLOR 11: PRINT "2 Spielers":    Ml = 5:  ELSE LOCATE 20, 36: COLOR 3: PRINT "2 Spielers":    LINE (255, 298)-(390, 323), 2, B
IF m = 6 THEN : LINE (255, 330)-(390, 355), 10, B: LOCATE 22, 35: COLOR 11: PRINT "Tips am Rande": Ml = 6:  ELSE LOCATE 22, 35: COLOR 3: PRINT "Tips am Rande": LINE (255, 330)-(390, 355), 2, B
LOOP
Ae:
SELECT CASE m
 CASE IS = 1
  GOTO l1
 CASE IS = 2
  GOTO l2
 CASE IS = 3
  GOTO l3
 CASE IS = 4
  GOTO l4
 CASE IS = 5
  GOTO 12
 CASE IS = 6
  GOTO tip
 CASE ELSE
  GOTO ab
END SELECT

l1:
CLS : LOCATE 6, 25: COLOR 14: PRINT "Anleitung fÅr das 1. Level"
PRINT : COLOR 3
PRINT "   In diesem Spiel geht es darum, alle gegnerischen Raumschiffe"
PRINT "    zu zerstîren."
PRINT "   Dazu gibt es 4 Mîglichkeiten:"
PRINT : COLOR 2
PRINT SPC(10); "Taste "; CHR$(34); "g"; CHR$(34); " nach hinten Schiessen:    Wirksamkeit 2"
PRINT SPC(10); "Taste "; CHR$(34); "h"; CHR$(34); " nach vorne Schiessen:     Wirksamkeit 1, hohes Tempo"
PRINT SPC(10); "Taste "; CHR$(34); "Space"; CHR$(34); " nach vorne Schiessen: Wirksamkeit 5, geringes Tempo"
PRINT SPC(10); "Cursortasten - rammen:"; SPC(13); " Wirksamkeit 10, Schilde Abzug"
PRINT : COLOR 3
PRINT "   Die gegnerischen Raumschiffe (in Fachkreisen auch "; CHR$(34); "Klingonen"; CHR$(34); " genannt)"
PRINT "    haben eine SchildstÑrke von 10. Das hei·t:"
PRINT "   Sie mÅssen das Klingonenschiff 2x mit "; CHR$(34); "Space"; CHR$(34); ", bzw."; CHR$(34); "Leertaste"; CHR$(34); " (Torpedo)"
PRINT "    treffen, um es zu zertsîren. Oder 5x mit Phaser (Taste "; CHR$(34); "h"; CHR$(34); ") und 1x mit"
PRINT "    Torpedo oder 3x mit Taste "; CHR$(34); "g"; CHR$(34); " (Antriebsplasma) und 4x mit Phaser, usw. ..."
PRINT : COLOR 2
PRINT "   Bei erreichen von 5000 und 10000 Punkten wird das Gegnerschiff schneller."
PRINT "   1000 Punkte gibt es fÅr den Abschuss eines Raumschiffes. Bei Durchlass"
PRINT "    werden 500 Punkte abgezogen. Mit 15000 Punkten haben Sie GEWONNEN!"
SLEEP: GOTO Aa

l2:
CLS : LOCATE 9, 25: COLOR 14: PRINT "Anleitung fÅr das 2. Level"
PRINT : COLOR 3
PRINT "   Im Wesentlichen bleiben die Regeln die gleichen, wie im ersten Level,"
PRINT "    bis auf 2 Sachen:"
PRINT : COLOR 2
PRINT "    1. Man bekommt 100 Punkte fÅr jeden Treffer."
PRINT "    2. Man bekommt -50 Punkte fÅr jeden Schuss, der daneben geht."
SLEEP: GOTO Aa

l3:
CLS : LOCATE 6, 25: COLOR 14: PRINT "Anleitung fÅr das 3. Level"
PRINT : COLOR 3
PRINT "   Die Regeln sind auch hier Ñhnlich denen des ersten und zweiten Level,"
PRINT "    bis auf die folgenden Punkte:"
PRINT : COLOR 2
PRINT " * Das flimmernde Gebilde, welches am rechten Bildschirmrand îfters auftaucht,"
PRINT "    soll ein Wurmloch sein, aus dem das Dominion-Raumschiff kommt."
PRINT : COLOR 3
PRINT " * Alle paar Sekunden kommt von Deep Space Nine (das brÑunliche Gebilde da oben)"
PRINT "    ein Transportshuttle nach Bayor runter. Doch Vorsicht! Bei Zerstîrung des"
PRINT "    Shuttles gibt es 500 Punkte Abzug. Kommt das Shuttle hingegen unbeschadet"
PRINT "    nach unten, so gibt es satte 1000 Punkte PLUS !"
PRINT : COLOR 2
PRINT " * Wenn ein Dominion-Schiff an DS9 zerschellt, werden 500 Punkte abgezogen."
SLEEP: GOTO Aa

l4:
CLS : LOCATE 6, 25: COLOR 14: PRINT "Anleitung fÅr das 4. Level"
PRINT : COLOR 3
PRINT "   Dieses Level ist etwas anders gegenÅber die ersten 3 Level:"
PRINT : COLOR 2
PRINT " * Man hat nur einen Gegner: den sogenannten "; CHR$(34); "Borg-Qbus"; CHR$(34); ", der sich wehren kann."
PRINT : COLOR 3
PRINT " * Das, was vorher nach hinten Schie·en war, ist jetzt auch nach vorne"
PRINT "    Schie·en, nur etwas langsamer und mit Wirksamkeit 2."
PRINT : COLOR 2
PRINT " * Die Statuszeile (unten) befasst sich nur mit dem Zustand der beiden Schiffe:": COLOR 3
PRINT "   - linker Teil - Voyager :"
PRINT "    grafische Darstellung/ in Prozent/ als Zahlenwert (0 - 8)": COLOR 2
PRINT "   - rechter Teil - BorgwÅrfel :"
PRINT "    grafische Darstellung/ in Prozent/ als Zahlenwert (-2 - 8), fÅr jedes Deck"
PRINT : COLOR 3
PRINT " * Punkte werden nicht vergeben, Sie gewinnen, wenn Sie jedes Deck des Borg-"
PRINT "    wÅrfels ausreichend beschÑdigt haben (bis unter Zahlenwert 0)."
SLEEP: GOTO Aa

12
CLS : LOCATE 6, 27: COLOR 14: PRINT "Anleitung fÅr 2 Spieler"
PRINT : COLOR 11
              PRINT SPC(32); "Bedienung"
        PRINT SPC(24); "Spieler 1      Spieler 2"
COLOR 3
PRINT SPC(15); "--------+--------------+----------------+"
PRINT SPC(15); "oben    :  w           :Cursor oben     :"
PRINT SPC(15); "unten   :  y           :  "; CHR$(34); "    unten    :"
PRINT SPC(15); "links   :  a           :  "; CHR$(34); "    links    :"
PRINT SPC(15); "rechts  :  d           :  "; CHR$(34); "    rechts   :"
PRINT SPC(15); "Phaser  :  h           :+      )¯       :"
PRINT SPC(15); "Torpedo :  Leertaste   :0      )¯       :"
PRINT SPC(15); "Hinten  :  g           :Enter  )¯       :"
PRINT : PRINT SPC(30); ")¯ auf dem Ziffernblock"
PRINT : COLOR 2
PRINT ""
SLEEP: GOTO Aa

tip:
CLS : LOCATE 5, 24: COLOR 14: PRINT "kleine Tips am Rande"
PRINT : COLOR 3
PRINT "  -Ø Vor- und Abspann, sowie Einleitungen lassen sich mit BetÑtigen"
PRINT "     der Leertaste umgehen."
PRINT : COLOR 2
PRINT "  -Ø Mit Taste "; CHR$(34); "m"; CHR$(34); " kann man wÑhrend des Abschpanns zum menu zurrÅckkehren."
PRINT : COLOR 3
PRINT "  -Ø Mit Taste "; CHR$(34); "s"; CHR$(34); " erscheinen neue Sterne."
PRINT : COLOR 2
PRINT "  -Ø Wenn das Spiel vom PC mit Warnungen, wie "; CHR$(34); "Stapelplatz reicht nicht"; CHR$(34)
PRINT "     oder "; CHR$(34); "Funktionsaufruf unzulÑssig"; CHR$(34); " unterbrochen wird, dann"
PRINT "     drÅcken Sie bitte SHIFT+F5, um das Spiel neu zu Starten."
PRINT : COLOR 3
PRINT "  -Ø Mit STRG+PAUSE lÑsst sich das Spiel unterbrechen bzw. nur mit PAUSE"
PRINT "     anhalten, F5 zum fortsetzen."
'PRINT "  -Ø Zum UmblÑttern von Seiten irgendwelcher An- oder Einleitungen (etc.)"
'PRINT "     empfielt es sich eine der SHIFT-Tasten zu benutzen, da es sonst"
'PRINT "     Auswirkungen auf das nachfolgende Sub-Programm geben kann."
COLOR 7: LOCATE 27, 30: PRINT "<TASTE>"
logo
SLEEP: CLS
CLS : LOCATE 5, 25: COLOR 14: PRINT "noch ein paar Tips"
PRINT : COLOR 2
PRINT "  -Ø Mit den Codes "; CHR$(34); "test3"; CHR$(34); " und "; CHR$(34); "test4"; CHR$(34); " kann man Level 3 und 4 testen."
PRINT : COLOR 3
PRINT "  -Ø Ich habe oft den Screen 0-Modus benutzt (dann lÑuft das Spiel schneller)"
PRINT "     Punkte, Linien oder Kreise sind in diesem Modus jedoch nicht mîglich."
PRINT : COLOR 2
PRINT "  -Ø In Vorbereitung: UnAd2, Mastermint, Grafik-Editor, Boulderdash"
COLOR 7: LOCATE 27, 30: PRINT "<TASTE>"
logo
SLEEP: GOTO Aa
END SUB

SUB Anzeige1a

 sld = 5
 pkt = 0
 wnd = 0
 absh = 0

 COLOR 2
 LOCATE 21, 1: PRINT "⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø"
 LOCATE 22, 1: PRINT "≥                ≥                ≥                 ≥≥                         ≥"
 LOCATE 23, 1: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ"

 COLOR 11
 LOCATE 22, 7: PRINT "AbschÅsse"
 LOCATE 22, 21: PRINT "Schilde"
 LOCATE 22, 44: PRINT "Punkte"
 LOCATE 22, 57: PRINT "Gegner"

END SUB

SUB Anzeige1b

 COLOR 9

 SELECT CASE pkt
 CASE IS >= 10000
  LOCATE 22, 37
 CASE IS < 10000
  LOCATE 22, 38
 CASE IS < 1000
  LOCATE 22, 39
 CASE IS <= -1000
  LOCATE 22, 36
 CASE IS < 0
  LOCATE 22, 39
 END SELECT

 PRINT pkt

 IF absh < 10 THEN LOCATE 22, 4:  ELSE LOCATE 22, 3
 PRINT absh

 gnr = 10 - wnd
 LOCATE 22, 63: PRINT gnr
 COLOR 12
SELECT CASE gnr
 CASE IS = 10
 LOCATE 22, 67: PRINT "***** *****"
 CASE IS = 9
 LOCATE 22, 67: PRINT "***** ****˘"
 CASE IS = 8
 LOCATE 22, 67: PRINT "***** ***˘˘"
 CASE IS = 7
 LOCATE 22, 67: PRINT "***** **˘˘˘"
 CASE IS = 6
 LOCATE 22, 67: PRINT "***** *˘˘˘˘"
 CASE IS = 5
 LOCATE 22, 67: PRINT "***** ˘˘˘˘˘"
 CASE IS = 4
 LOCATE 22, 67: PRINT "****˘ ˘˘˘˘˘"
 CASE IS = 3
 LOCATE 22, 67: PRINT "***˘˘ ˘˘˘˘˘"
 CASE IS = 2
 LOCATE 22, 67: PRINT "**˘˘˘ ˘˘˘˘˘"
 CASE IS = 1
 LOCATE 22, 67: PRINT "*˘˘˘˘ ˘˘˘˘˘"
END SELECT

 SELECT CASE sld
 CASE IS = 5
  LOCATE 22, 29: COLOR 10: PRINT "∞±≤€"
 CASE IS = 4
  LOCATE 22, 29: COLOR 10: PRINT "∞±≤"
  LOCATE 22, 32: COLOR 12: PRINT "∞"
 CASE IS = 3
  LOCATE 22, 29: COLOR 10: PRINT "∞±"
  LOCATE 22, 31: COLOR 12: PRINT "±∞"
 CASE IS = 2
  LOCATE 22, 29: COLOR 10: PRINT "∞"
  LOCATE 22, 30: COLOR 12: PRINT "≤±∞"
 CASE IS = 1
  LOCATE 22, 29: COLOR 12: PRINT "€≤±∞"
 CASE IS = 0
  LOCATE 22, 29: COLOR 12: PRINT "----": SLEEP 1: loose1
 END SELECT

END SUB

SUB Anzeige21a

 sld1 = 12
 sld2 = 12

 COLOR 2
 LOCATE 21, 1: PRINT "⁄ƒƒ¥      √ƒƒ¬ƒƒƒƒƒƒƒƒ¥       √ƒƒƒƒƒƒƒƒø⁄ƒƒ¥      √ƒƒ¬ƒƒƒƒƒƒƒƒ¥       √ƒƒƒƒƒƒƒƒø"
 LOCATE 22, 1: PRINT "≥            ≥                         ≥≥            ≥                         ≥"
 LOCATE 23, 1: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ¿ƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ"

 COLOR 11
 LOCATE 21, 5: PRINT "Punkte"
 LOCATE 21, 24: PRINT "Schilde"
 LOCATE 21, 45: PRINT "Punkte"
 LOCATE 21, 64: PRINT "Schilde"

END SUB

SUB Anzeige21b

COLOR 12
SELECT CASE sld1
 CASE IS <= 0
  LOCATE 22, 16: PRINT "  0 "
 CASE IS < 10
  LOCATE 22, 17: PRINT sld1
 CASE IS >= 10
  LOCATE 22, 16: PRINT sld1
END SELECT

SELECT CASE sld1
 CASE IS = 12
  COLOR 10: LOCATE 22, 20: PRINT "** ** **  ** ** **"
 CASE IS = 11
  COLOR 10: LOCATE 22, 20: PRINT "** ** **  ** ** *"
  COLOR 12: LOCATE 22, 37: PRINT "˘"
 CASE IS = 10
  COLOR 10: LOCATE 22, 20: PRINT "** ** **  ** **"
  COLOR 12: LOCATE 22, 36: PRINT "˘˘"
 CASE IS = 9
  COLOR 10: LOCATE 22, 20: PRINT "** ** **  ** *"
  COLOR 12: LOCATE 22, 34: PRINT "˘ ˘˘"
 CASE IS = 8
  COLOR 10: LOCATE 22, 20: PRINT "** ** **  **"
  COLOR 12: LOCATE 22, 33: PRINT "˘˘ ˘˘"
 CASE IS = 7
  COLOR 10: LOCATE 22, 20: PRINT "** ** **  *"
  COLOR 12: LOCATE 22, 31: PRINT "˘ ˘˘ ˘˘"
 CASE IS = 6
  COLOR 10: LOCATE 22, 20: PRINT "** ** **"
  COLOR 12: LOCATE 22, 30: PRINT "˘˘ ˘˘ ˘˘"
 CASE IS = 5
  COLOR 10: LOCATE 22, 20: PRINT "** ** *"
  COLOR 12: LOCATE 22, 27: PRINT "˘  ˘˘ ˘˘ ˘˘"
 CASE IS = 4
  COLOR 10: LOCATE 22, 20: PRINT "** **"
  COLOR 12: LOCATE 22, 26: PRINT "˘˘  ˘˘ ˘˘ ˘˘"
 CASE IS = 3
  COLOR 10: LOCATE 22, 20: PRINT "** *"
  COLOR 12: LOCATE 22, 24: PRINT "˘ ˘˘  ˘˘ ˘˘ ˘˘"
 CASE IS = 2
  COLOR 10: LOCATE 22, 20: PRINT "**"
  COLOR 12: LOCATE 22, 23: PRINT "˘˘ ˘˘  ˘˘ ˘˘ ˘˘"
 CASE IS = 1
  COLOR 10: LOCATE 22, 20: PRINT "*"
  COLOR 12: LOCATE 22, 21: PRINT "˘ ˘˘ ˘˘  ˘˘ ˘˘ ˘˘"
 CASE IS <= 0
  COLOR 12: LOCATE 22, 20: PRINT "˘˘ ˘˘ ˘˘  ˘˘ ˘˘ ˘˘"
END SELECT

COLOR 12
SELECT CASE sld2
 CASE IS <= 0
  LOCATE 22, 56: PRINT "  0 "
 CASE IS < 10
  LOCATE 22, 57: PRINT sld2
 CASE IS >= 10
  LOCATE 22, 56: PRINT sld2
END SELECT

SELECT CASE sld2
 CASE IS = 12
  COLOR 10: LOCATE 22, 60: PRINT "** ** **  ** ** **"
 CASE IS = 11
  COLOR 10: LOCATE 22, 60: PRINT "** ** **  ** ** *"
  COLOR 12: LOCATE 22, 77: PRINT "˘"
 CASE IS = 10
  COLOR 10: LOCATE 22, 60: PRINT "** ** **  ** **"
  COLOR 12: LOCATE 22, 76: PRINT "˘˘"
 CASE IS = 9
  COLOR 10: LOCATE 22, 60: PRINT "** ** **  ** *"
  COLOR 12: LOCATE 22, 74: PRINT "˘ ˘˘"
 CASE IS = 8
  COLOR 10: LOCATE 22, 60: PRINT "** ** **  **"
  COLOR 12: LOCATE 22, 73: PRINT "˘˘ ˘˘"
 CASE IS = 7
  COLOR 10: LOCATE 22, 60: PRINT "** ** **  *"
  COLOR 12: LOCATE 22, 71: PRINT "˘ ˘˘ ˘˘"
 CASE IS = 6
  COLOR 10: LOCATE 22, 60: PRINT "** ** **"
  COLOR 12: LOCATE 22, 70: PRINT "˘˘ ˘˘ ˘˘"
 CASE IS = 5
  COLOR 10: LOCATE 22, 60: PRINT "** ** *"
  COLOR 12: LOCATE 22, 67: PRINT "˘  ˘˘ ˘˘ ˘˘"
 CASE IS = 4
  COLOR 10: LOCATE 22, 60: PRINT "** **"
  COLOR 12: LOCATE 22, 66: PRINT "˘˘  ˘˘ ˘˘ ˘˘"
 CASE IS = 3
  COLOR 10: LOCATE 22, 60: PRINT "** *"
  COLOR 12: LOCATE 22, 64: PRINT "˘ ˘˘  ˘˘ ˘˘ ˘˘"
 CASE IS = 2
  COLOR 10: LOCATE 22, 60: PRINT "**"
  COLOR 12: LOCATE 22, 63: PRINT "˘˘ ˘˘  ˘˘ ˘˘ ˘˘"
 CASE IS = 1
  COLOR 10: LOCATE 22, 60: PRINT "*"
  COLOR 12: LOCATE 22, 61: PRINT "˘ ˘˘ ˘˘  ˘˘ ˘˘ ˘˘"
 CASE IS <= 0
  COLOR 12: LOCATE 22, 60: PRINT "˘˘ ˘˘ ˘˘  ˘˘ ˘˘ ˘˘"
END SELECT
COLOR 14
LOCATE 22, 5: PRINT pkt1
LOCATE 22, 45: PRINT pkt2
END SUB

SUB Anzeige2a

 sld = 5

 COLOR 2
 LOCATE 21, 1: PRINT "⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø"
 LOCATE 22, 1: PRINT "≥                ≥                ≥                 ≥≥                         ≥"
 LOCATE 23, 1: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ"

 COLOR 11
 LOCATE 22, 7: PRINT "AbschÅsse"
 LOCATE 22, 21: PRINT "Schilde"
 LOCATE 22, 44: PRINT "Punkte"
 LOCATE 22, 57: PRINT "Gegner"

END SUB

SUB Anzeige2b

 COLOR 9

 SELECT CASE pkt
 CASE IS >= 10000
  LOCATE 22, 37
 CASE IS < 10000
  LOCATE 22, 38
 CASE IS < 1000
  LOCATE 22, 39
 CASE IS <= -1000
  LOCATE 22, 36
 CASE IS < 0
  LOCATE 22, 39
 END SELECT

 PRINT pkt

 IF absh < 10 THEN LOCATE 22, 4:  ELSE LOCATE 22, 3
 PRINT absh

 gnr = 10 - wnd
 LOCATE 22, 63: PRINT gnr
 COLOR 12
SELECT CASE gnr
 CASE IS = 10
 LOCATE 22, 67: PRINT "***** *****"
 CASE IS = 9
 LOCATE 22, 67: PRINT "***** ****˘"
 CASE IS = 8
 LOCATE 22, 67: PRINT "***** ***˘˘"
 CASE IS = 7
 LOCATE 22, 67: PRINT "***** **˘˘˘"
 CASE IS = 6
 LOCATE 22, 67: PRINT "***** *˘˘˘˘"
 CASE IS = 5
 LOCATE 22, 67: PRINT "***** ˘˘˘˘˘"
 CASE IS = 4
 LOCATE 22, 67: PRINT "****˘ ˘˘˘˘˘"
 CASE IS = 3
 LOCATE 22, 67: PRINT "***˘˘ ˘˘˘˘˘"
 CASE IS = 2
 LOCATE 22, 67: PRINT "**˘˘˘ ˘˘˘˘˘"
 CASE IS = 1
 LOCATE 22, 67: PRINT "*˘˘˘˘ ˘˘˘˘˘"
END SELECT

SELECT CASE sld
 CASE IS = 5
  LOCATE 22, 29: COLOR 10: PRINT "∞±≤€"
 CASE IS = 4
  LOCATE 22, 29: COLOR 10: PRINT "∞±≤"
  LOCATE 22, 32: COLOR 12: PRINT "∞"
 CASE IS = 3
  LOCATE 22, 29: COLOR 10: PRINT "∞±"
  LOCATE 22, 31: COLOR 12: PRINT "±∞"
 CASE IS = 2
  LOCATE 22, 29: COLOR 10: PRINT "∞"
  LOCATE 22, 30: COLOR 12: PRINT "≤±∞"
 CASE IS = 1
  LOCATE 22, 29: COLOR 12: PRINT "€≤±∞"
 CASE IS = 0
  LOCATE 22, 29: COLOR 12: PRINT "----": SLEEP 1: loose2
 END SELECT

END SUB

SUB Anzeige3a

 sld = 5
IF test3 = 1 THEN sld = 1: test3 = 0

 COLOR 2
 LOCATE 21, 1: PRINT "⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø"
 LOCATE 22, 1: PRINT "≥                ≥                ≥                 ≥≥                         ≥"
 LOCATE 23, 1: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ"

 COLOR 11
 LOCATE 22, 7: PRINT "AbschÅsse"
 LOCATE 22, 21: PRINT "Schilde"
 LOCATE 22, 44: PRINT "Punkte"
 LOCATE 22, 57: PRINT "Gegner"

END SUB

SUB Anzeige3b

 COLOR 9

 SELECT CASE pkt
 CASE IS >= 10000
  LOCATE 22, 37
 CASE IS < 10000
  LOCATE 22, 38
 CASE IS < 1000
  LOCATE 22, 39
 CASE IS <= -1000
  LOCATE 22, 36
 CASE IS < 0
  LOCATE 22, 39
 END SELECT

 PRINT pkt

 IF absh < 10 THEN LOCATE 22, 4:  ELSE LOCATE 22, 3
 PRINT absh

 gnr = 10 - wnd
 LOCATE 22, 63: PRINT gnr
 COLOR 12
SELECT CASE gnr
 CASE IS = 10
 LOCATE 22, 67: PRINT "***** *****"
 CASE IS = 9
 LOCATE 22, 67: PRINT "***** ****˘"
 CASE IS = 8
 LOCATE 22, 67: PRINT "***** ***˘˘"
 CASE IS = 7
 LOCATE 22, 67: PRINT "***** **˘˘˘"
 CASE IS = 6
 LOCATE 22, 67: PRINT "***** *˘˘˘˘"
 CASE IS = 5
 LOCATE 22, 67: PRINT "***** ˘˘˘˘˘"
 CASE IS = 4
 LOCATE 22, 67: PRINT "****˘ ˘˘˘˘˘"
 CASE IS = 3
 LOCATE 22, 67: PRINT "***˘˘ ˘˘˘˘˘"
 CASE IS = 2
 LOCATE 22, 67: PRINT "**˘˘˘ ˘˘˘˘˘"
 CASE IS = 1
 LOCATE 22, 67: PRINT "*˘˘˘˘ ˘˘˘˘˘"
END SELECT

SELECT CASE sld
 CASE IS = 5
  LOCATE 22, 29: COLOR 10: PRINT "∞±≤€"
 CASE IS = 4
  LOCATE 22, 29: COLOR 10: PRINT "∞±≤"
  LOCATE 22, 32: COLOR 12: PRINT "∞"
 CASE IS = 3
  LOCATE 22, 29: COLOR 10: PRINT "∞±"
  LOCATE 22, 31: COLOR 12: PRINT "±∞"
 CASE IS = 2
  LOCATE 22, 29: COLOR 10: PRINT "∞"
  LOCATE 22, 30: COLOR 12: PRINT "≤±∞"
 CASE IS = 1
  LOCATE 22, 29: COLOR 12: PRINT "€≤±∞"
 CASE IS = 0
  LOCATE 22, 29: COLOR 12: PRINT "----": SLEEP 1: loose3
 END SELECT

END SUB

SUB Anzeige4a

 sld = 8
IF test4 = 1 THEN sld = 0: test4 = 0
 COLOR 2
 LOCATE 21, 1: PRINT "⁄ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒø⁄ƒƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒ¬ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒø"
 LOCATE 22, 1: PRINT "≥                ≥         ≥       ≥≥          ≥         ≥                     ≥"
 LOCATE 23, 1: PRINT "¿ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒŸ¿ƒƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒ¡ƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒƒŸ"

 COLOR 11
 LOCATE 22, 4:  PRINT "Schilde"

END SUB

SUB Anzeige4b

 COLOR 9

COLOR 12
 IF INT(b5) <= 0 THEN COLOR 10:  ELSE COLOR 12
  LOCATE 22, 75: PRINT INT(b5)
 IF INT(b4) <= 0 THEN COLOR 10:  ELSE COLOR 12
  LOCATE 22, 72: PRINT INT(b4)
 IF INT(b3) <= 0 THEN COLOR 10:  ELSE COLOR 12
  LOCATE 22, 69: PRINT INT(b3)
 IF INT(b2) <= 0 THEN COLOR 10:  ELSE COLOR 12
  LOCATE 22, 66: PRINT INT(b2)
 IF INT(b1) <= 0 THEN COLOR 10:  ELSE COLOR 12
  LOCATE 22, 63: PRINT INT(b1)
 IF INT(b0) <= 0 THEN COLOR 10:  ELSE COLOR 12
  LOCATE 22, 60: PRINT INT(b0)

bproz = INT((b0 + b1 + b2 + b3 + b4 + b5 + 12) * 100 / 60)
IF bproz = 100 THEN COLOR 28: LOCATE 22, 50:  ELSE COLOR 12: LOCATE 22, 51
IF bproz < 10 THEN COLOR 10: LOCATE 22, 52
PRINT bproz; "%"

COLOR 12: LOCATE 22, 40
SELECT CASE bproz
 CASE IS = 100
  PRINT "******"
 CASE IS >= 83
  PRINT "∞*****"
 CASE IS >= 67
  PRINT "∞∞****"
 CASE IS >= 50
  PRINT "∞∞∞***"
 CASE IS >= 33
  PRINT "∞∞∞∞**"
 CASE IS >= 17
  PRINT "∞∞∞∞∞*"
 CASE IS >= 0
  PRINT "∞∞∞∞∞∞"
END SELECT

COLOR 30: LOCATE 20, 30
IF sld > 4 THEN PRINT "Wiederstand ist zwecklos !":  ELSE LOCATE 20, 28: PRINT "Ihr werdet alle assimiliert !"
SELECT CASE INT(sld)
 CASE IS = 8
  COLOR 10: LOCATE 22, 12: PRINT "≤≤≤≤"
 CASE IS = 7
  COLOR 10: LOCATE 22, 15: PRINT "∞"
 CASE IS = 6
  COLOR 28: LOCATE 22, 15: PRINT "∞"
 CASE IS = 5
  COLOR 10: LOCATE 22, 14: PRINT "∞"
  COLOR 28: LOCATE 22, 15: PRINT "∞"
 CASE IS = 4
  COLOR 28: LOCATE 22, 14: PRINT "±∞"
 CASE IS = 3
  COLOR 10: LOCATE 22, 13: PRINT "∞"
  COLOR 28: LOCATE 22, 14: PRINT "±∞"
 CASE IS = 2
  COLOR 28: LOCATE 22, 13: PRINT "≤±∞"
 CASE IS = 1
  COLOR 10: LOCATE 22, 12: PRINT "∞"
  COLOR 28: LOCATE 22, 13: PRINT "≤±∞"
 CASE IS = 0
  COLOR 28: LOCATE 22, 12: PRINT "€≤±∞"
 CASE IS < 0
  COLOR 28: LOCATE 22, 12: PRINT "€€€€"
END SELECT

IF INT(sld) <= 4 THEN COLOR 12 ELSE COLOR 14
IF INT(sld) <= 0 THEN COLOR 28
LOCATE 22, 31: PRINT INT(sld)
IF INT(sld) = 8 THEN LOCATE 22, 20:  ELSE LOCATE 22, 21
IF INT(sld) = 0 THEN LOCATE 22, 22
PRINT INT(sld * 100 / 8); "%"

END SUB

SUB Borg
RANDOMIZE TIMER

k4a = k4a + 3  ' <= Bewegung des Borg-Qbus nach oben und unten
IF k4a >= 40 THEN K4 = INT(RND(1) * 3) - 1: k4a = 0

yf = yf + K4
IF yf < 2 THEN yf = 2
IF yf > 14 THEN yf = 14

 LOCATE yf - 1, xf: PRINT "             "
 LOCATE yf + 6, xf: PRINT "             "

SELECT CASE INT(b0)
CASE IS >= 8
 COLOR 7: LOCATE yf, xf: PRINT "/±€€± ±±": LOCATE yf, xf + 11: PRINT "±ª": COLOR 14: LOCATE yf, xf + 5: PRINT "": LOCATE yf, xf + 8: PRINT "Ô"
CASE IS = 7
 COLOR 7: LOCATE yf, xf: PRINT "/∞≤€± ±±": LOCATE yf, xf + 11: PRINT "±ª": COLOR 14: LOCATE yf, xf + 5: PRINT "": LOCATE yf, xf + 8: PRINT "Ô"
CASE IS = 6
 COLOR 7: LOCATE yf, xf: PRINT "/∞∞±± ±±": LOCATE yf, xf + 11: PRINT "±ª": COLOR 14: LOCATE yf, xf + 5: PRINT "": LOCATE yf, xf + 8: PRINT "Ô"
CASE IS = 5
 COLOR 7: LOCATE yf, xf: PRINT "/∞∞∞∞ ±±": LOCATE yf, xf + 11: PRINT "±ª": COLOR 14: LOCATE yf, xf + 5: PRINT "": LOCATE yf, xf + 8: PRINT "Ô"
CASE IS = 4
 COLOR 7: LOCATE yf, xf: PRINT "/∞∞∞∞ ±±": LOCATE yf, xf + 11: PRINT "±ª": COLOR 14: LOCATE yf, xf + 5: PRINT "=": LOCATE yf, xf + 8: PRINT "Ô"
CASE IS = 3
 COLOR 7: LOCATE yf, xf: PRINT "/∞∞∞∞ ∞±": LOCATE yf, xf + 11: PRINT "±ª": COLOR 14: LOCATE yf, xf + 5: PRINT "-": LOCATE yf, xf + 8: PRINT "=+="
CASE IS = 2
 COLOR 7: LOCATE yf, xf: PRINT "/∞∞∞∞ ∞∞": LOCATE yf, xf + 11: PRINT "±ª": COLOR 14: LOCATE yf, xf + 5: PRINT "-": LOCATE yf, xf + 8: PRINT "-+="
CASE IS = 1
 COLOR 7: LOCATE yf, xf: PRINT "/∞∞∞∞ ∞∞": LOCATE yf, xf + 11: PRINT "∞ª": COLOR 14: LOCATE yf, xf + 5: PRINT "-": LOCATE yf, xf + 8: PRINT "-+-"
CASE IS <= 0
 COLOR 7: LOCATE yf, xf: PRINT "/∞∞∞∞ ∞∞": LOCATE yf, xf + 11: PRINT "∞ø": COLOR 14: LOCATE yf, xf + 5: PRINT "-": LOCATE yf, xf + 8: PRINT "-+-"
END SELECT

SELECT CASE INT(b1)
CASE IS >= 8
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "Ã[]": LOCATE yf + 1, xf: PRINT "-)Ø>∂"
CASE IS = 7
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "Ã[]": LOCATE yf + 1, xf: PRINT "-+Ø>∂"
CASE IS = 6
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "Ã[]": LOCATE yf + 1, xf: PRINT "˙++>|"
CASE IS = 5
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "Ã[]": LOCATE yf + 1, xf: PRINT "˙+-+|"
CASE IS = 4
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "|[]": LOCATE yf + 1, xf: PRINT "˙+--|"
CASE IS = 3
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "|(]": LOCATE yf + 1, xf: PRINT "˙+--|"
CASE IS = 2
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "|*=)": LOCATE yf + 1, xf: PRINT "˙+--|"
CASE IS = 1
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "|+-+": LOCATE yf + 1, xf: PRINT "˙+--|"
CASE IS <= 0
 COLOR 14: LOCATE yf + 1, xf + 9: PRINT "|--+": LOCATE yf + 1, xf: PRINT "˙+--|"
END SELECT

SELECT CASE INT(b2)
CASE IS >= 8
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "±Õπ": LOCATE yf + 2, xf + 6: PRINT "€≤": COLOR 14: LOCATE yf + 2, xf: PRINT "ÛÚ  À": LOCATE yf + 2, xf + 8: PRINT "ù ": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "≤"
CASE IS = 7
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "±Õπ": LOCATE yf + 2, xf + 6: PRINT "€≤": COLOR 14: LOCATE yf + 2, xf: PRINT "-ÛÚ  À": LOCATE yf + 2, xf + 8: PRINT "ù ": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "≤"
CASE IS = 6
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "±Õπ": LOCATE yf + 2, xf + 6: PRINT "€≤": COLOR 14: LOCATE yf + 2, xf: PRINT "-+Ú  À": LOCATE yf + 2, xf + 8: PRINT "ù ": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "≤"
CASE IS = 5
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "±Õπ": LOCATE yf + 2, xf + 6: PRINT "€≤": COLOR 14: LOCATE yf + 2, xf: PRINT "-++  À": LOCATE yf + 2, xf + 8: PRINT "ù ": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "±"
CASE IS = 4
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "±Õπ": LOCATE yf + 2, xf + 6: PRINT "€≤": COLOR 14: LOCATE yf + 2, xf: PRINT "--+  À": LOCATE yf + 2, xf + 8: PRINT "ù ": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "±"
CASE IS = 3
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "±Õπ": LOCATE yf + 2, xf + 6: PRINT "€≤": COLOR 14: LOCATE yf + 2, xf: PRINT "--+ ¡À": LOCATE yf + 2, xf + 8: PRINT "ù ": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "∞"
CASE IS = 2
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "∞Õπ": LOCATE yf + 2, xf + 6: PRINT "≤≤": COLOR 14: LOCATE yf + 2, xf: PRINT "--+ ¡¬": LOCATE yf + 2, xf + 8: PRINT "+ ": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "∞"
CASE IS = 1
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "∞-¥": LOCATE yf + 2, xf + 6: PRINT "±±": COLOR 14: LOCATE yf + 2, xf: PRINT "--+ ¡¬": LOCATE yf + 2, xf + 8: PRINT "+¡": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "∞"
CASE IS <= 0
 COLOR 7: LOCATE yf + 2, xf + 10: PRINT "∞-¥": LOCATE yf + 2, xf + 6: PRINT "∞±": COLOR 14: LOCATE yf + 2, xf: PRINT "--+ ¡¬": LOCATE yf + 2, xf + 8: PRINT "-¡": COLOR 7: LOCATE yf + 2, xf + 3: PRINT "∞"
END SELECT

SELECT CASE INT(b3)
CASE IS >= 8
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "±◊≈": LOCATE yf + 3, xf + 11: PRINT "≈∂"
CASE IS = 7
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "±◊≈": LOCATE yf + 3, xf + 11: PRINT "≈∂"
CASE IS = 6
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "∞≈≈": LOCATE yf + 3, xf + 11: PRINT "≈∂"
CASE IS = 5
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "∞≈+": LOCATE yf + 3, xf + 11: PRINT "≈∂"
CASE IS = 4
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "∞≈+": LOCATE yf + 3, xf + 11: PRINT "≈∂"
CASE IS = 3
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "∞≈+": LOCATE yf + 3, xf + 11: PRINT "≈∂"
CASE IS = 2
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "∞≈+": LOCATE yf + 3, xf + 11: PRINT "+∂"
CASE IS = 1
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "∞≈+": LOCATE yf + 3, xf + 11: PRINT "+|"
CASE IS <= 0
 COLOR 7: LOCATE yf + 3, xf + 5: PRINT "∞≈+": LOCATE yf + 3, xf + 11: PRINT "-|"
END SELECT

SELECT CASE INT(b4)
CASE IS >= 8
 COLOR 7: LOCATE yf + 4, xf: PRINT "≤€": LOCATE yf + 4, xf + 7: PRINT "≤  ± ≤": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "Õ[]ÕŒ": LOCATE yf + 4, xf + 8: PRINT "ÕÓ": LOCATE yf + 4, xf + 11: PRINT ""
CASE IS = 7
 COLOR 7: LOCATE yf + 4, xf: PRINT "±€": LOCATE yf + 4, xf + 7: PRINT "≤  ± ≤": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "Õ[]ÕŒ": LOCATE yf + 4, xf + 8: PRINT "ÕÓ": LOCATE yf + 4, xf + 11: PRINT ""
CASE IS = 6
 COLOR 7: LOCATE yf + 4, xf: PRINT "∞≤": LOCATE yf + 4, xf + 7: PRINT "≤  ± ≤": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "-(]ÕŒ": LOCATE yf + 4, xf + 8: PRINT "ÕÓ": LOCATE yf + 4, xf + 11: PRINT ""
CASE IS = 5
 COLOR 7: LOCATE yf + 4, xf: PRINT "∞±": LOCATE yf + 4, xf + 7: PRINT "≤  ± ≤": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "-()-Œ": LOCATE yf + 4, xf + 8: PRINT "ÕÓ": LOCATE yf + 4, xf + 11: PRINT ""
CASE IS = 4
 COLOR 7: LOCATE yf + 4, xf: PRINT "∞±": LOCATE yf + 4, xf + 7: PRINT "±  ± ≤": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "-()-Œ": LOCATE yf + 4, xf + 8: PRINT "ÕÓ": LOCATE yf + 4, xf + 11: PRINT ""
CASE IS = 3
 COLOR 7: LOCATE yf + 4, xf: PRINT "∞±": LOCATE yf + 4, xf + 7: PRINT "±  ± ≤": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "-()-≈": LOCATE yf + 4, xf + 8: PRINT "ÕÓ": LOCATE yf + 4, xf + 11: PRINT ""
CASE IS = 2
 COLOR 7: LOCATE yf + 4, xf: PRINT "∞±": LOCATE yf + 4, xf + 7: PRINT "∞  ± ≤": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "-()-≈": LOCATE yf + 4, xf + 8: PRINT "-Ó": LOCATE yf + 4, xf + 11: PRINT ""
CASE IS = 1
 COLOR 7: LOCATE yf + 4, xf: PRINT "∞±": LOCATE yf + 4, xf + 7: PRINT "∞  ∞ ±": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "-+)-≈": LOCATE yf + 4, xf + 8: PRINT "-(": LOCATE yf + 4, xf + 11: PRINT "="
CASE IS <= 0

 COLOR 7: LOCATE yf + 4, xf: PRINT "∞∞": LOCATE yf + 4, xf + 7: PRINT "∞  ∞ ±": COLOR 14: LOCATE yf + 4, xf + 2: PRINT "˙+)-≈": LOCATE yf + 4, xf + 8: PRINT "-(": LOCATE yf + 4, xf + 11: PRINT "-"
END SELECT

SELECT CASE INT(b5)
CASE IS >= 8
 COLOR 7: LOCATE yf + 5, xf: PRINT "\≤": LOCATE yf + 5, xf + 5: PRINT "‹≤±‹  €Ì": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "ƒ–"
CASE IS = 7
 COLOR 7: LOCATE yf + 5, xf: PRINT "\±": LOCATE yf + 5, xf + 5: PRINT "‹≤±‹  €Ì": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "ƒ–"
CASE IS = 6
 COLOR 7: LOCATE yf + 5, xf: PRINT "\∞": LOCATE yf + 5, xf + 5: PRINT "‹≤±‹  €Ì": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "ƒ–"
CASE IS = 5
 COLOR 7: LOCATE yf + 5, xf: PRINT "\∞": LOCATE yf + 5, xf + 5: PRINT "o≤±‹  €Ì": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "ƒ–"
CASE IS = 4
 COLOR 7: LOCATE yf + 5, xf: PRINT "\∞": LOCATE yf + 5, xf + 5: PRINT "o±±‹  €Ì": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "ƒ–"
CASE IS = 3
 COLOR 7: LOCATE yf + 5, xf: PRINT "\∞": LOCATE yf + 5, xf + 5: PRINT "-±±o  €Ì": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "ƒ–"
CASE IS = 2
 COLOR 7: LOCATE yf + 5, xf: PRINT "\∞": LOCATE yf + 5, xf + 5: PRINT "-∞∞o  €Ì": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "ƒ–"
CASE IS = 1
 COLOR 7: LOCATE yf + 5, xf: PRINT "\∞": LOCATE yf + 5, xf + 5: PRINT "-∞∞+  ≤Ì": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "˙–"
CASE IS <= 0
 COLOR 7: LOCATE yf + 5, xf: PRINT "\∞": LOCATE yf + 5, xf + 5: PRINT "-∞∞-  ±/": COLOR 14: LOCATE yf + 5, xf + 9: PRINT "˙¡"
END SELECT

z1 = z1 + 1
z2 = z2 + (1 / 20)
z3 = INT(z2)

SELECT CASE INT(b1)

 CASE IS = 8
  SELECT CASE z3
  CASE IS = 0
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "   |"
   COLOR 12: LOCATE yf + 1, xf + 2: PRINT "Ø"
  CASE IS = 1
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "  )-"
   COLOR 12: LOCATE yf + 1, xf + 1: PRINT ")"
  CASE IS = 2
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT " >--"
   COLOR 12: LOCATE yf + 1, xf: PRINT "-"
  CASE IS = 3
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "----"
   COLOR 12: LOCATE yf + 1, xf + 3: PRINT ">"
  CASE IS = 4
   z2 = 0
  END SELECT

 CASE IS = 7
  SELECT CASE z3
  CASE IS = 0
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "   |"
   COLOR 12: LOCATE yf + 1, xf + 2: PRINT "Ø"
  CASE IS = 1
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "  )-"
   COLOR 12: LOCATE yf + 1, xf + 1: PRINT "+"
  CASE IS = 2
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT " >--"
   COLOR 12: LOCATE yf + 1, xf: PRINT "-"
  CASE IS = 3
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "----"
   COLOR 12: LOCATE yf + 1, xf + 3: PRINT ">"
  CASE IS = 4
   z2 = 0
  END SELECT

 CASE IS = 6
  SELECT CASE z3
  CASE IS = 0
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "   |"
   COLOR 12: LOCATE yf + 1, xf + 2: PRINT "+"
  CASE IS = 1
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "  )-"
   COLOR 12: LOCATE yf + 1, xf + 1: PRINT "+"
  CASE IS = 2
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT " >--"
   COLOR 12: LOCATE yf + 1, xf: PRINT "˙"
  CASE IS = 3
   COLOR 4: LOCATE yf + 1, xf + 5: PRINT "----"
   COLOR 6: LOCATE yf + 1, xf + 3: PRINT "+"
  CASE IS = 4
   z2 = 0
  END SELECT

 CASE IS = 5
  SELECT CASE z3
  CASE IS = 0
   COLOR 6: LOCATE yf + 1, xf + 5: PRINT "   |"
   COLOR 6: LOCATE yf + 1, xf + 2: PRINT "-"
  CASE IS = 1
   COLOR 6: LOCATE yf + 1, xf + 5: PRINT "  )-"
   COLOR 6: LOCATE yf + 1, xf + 1: PRINT "+"
  CASE IS = 2
   COLOR 6: LOCATE yf + 1, xf + 5: PRINT " >--"
   COLOR 6: LOCATE yf + 1, xf: PRINT "˙"
  CASE IS = 3
   COLOR 6: LOCATE yf + 1, xf + 5: PRINT "----"
   COLOR 6: LOCATE yf + 1, xf + 3: PRINT "+"
  CASE IS = 4
   z2 = 0
  END SELECT

 CASE IS <= 4
  SELECT CASE z3
  CASE IS = 0
   COLOR 6: LOCATE yf + 1, xf + 5: PRINT "   |"
   COLOR 6: LOCATE yf + 1, xf + 2: PRINT "-"
  CASE IS = 1
   COLOR 6: LOCATE yf + 1, xf + 5: PRINT "  )-"
   COLOR 6: LOCATE yf + 1, xf + 1: PRINT "+"
  CASE IS = 2
   COLOR 6: LOCATE yf + 1, xf + 5: PRINT " >--"
   COLOR 6: LOCATE yf + 1, xf: PRINT "˙"
  CASE IS = 3
   COLOR 6: LOCATE yf + 1, xf + 5: PRINT "----"
   COLOR 6: LOCATE yf + 1, xf + 3: PRINT "-"
  CASE IS = 4
   z2 = 0
 END SELECT
END SELECT

COLOR z2 + 16: LOCATE yf + 3, xf + 8: PRINT "{0}"
COLOR z3 + 1: LOCATE yf + 5, xf + 2: PRINT "<>"
SELECT CASE z1
CASE IS = 1: COLOR 14
CASE IS = 2: COLOR 10
CASE IS = 3: COLOR 13
CASE IS = 4: COLOR 14
CASE IS = 5: COLOR 13
CASE IS = 6: COLOR 10
CASE IS = 7: COLOR 14
CASE IS = 8: COLOR 13
CASE IS = 9: COLOR 14
CASE IS = 10: z1 = 0
END SELECT
 LOCATE yf + 3, xf: PRINT "   Æ]"

'Sicherungen
IF yffc1 < 1 THEN yffc1 = 1
IF yffc5 > 19 THEN yffc5 = 19
IF yfFb < 2 THEN yfFb = 2
IF yfFb > 18 THEN yfFb = 18


 a = INT(RND(1) * 80)
IF b2 < 3 THEN FireBorga = 0
 FireBorga = FireBorga + a / 600

fire1:
 IF FireBorga > 1 THEN fBer4fa = fBer4fa + 1
'Fire4fa
 IF fBer4fa >= 1 THEN
                       
   IF fBer4fa = 1 THEN : xfFa = xf: yfFa = yf + 2
  xfFa = xfFa - 1

'Trefferbedingung4fa
  IF xfFa >= xr - 6 AND xfFa <= xr AND yfFa = yr THEN COLOR 10: LOCATE yfFa, xfFa: PRINT ">€)": FireBorga = 0: fBer4fa = 0: sld = sld - 1.5: SOUND 260, 1: SOUND 190, 1: SOUND 130, 2: xr = xr - 1

  COLOR 10: LOCATE yfFa, xfFa: PRINT "- "
  IF xfFa <= 1 THEN LOCATE yfFa, 1: PRINT " ": FireBorga = 0: fBer4fa = 0
       
 END IF


 B = INT(RND(1) * 80)
IF b3 < 3 THEN FireBorgb = 0
FireBorgb = FireBorgb + B / 600
IF FireBorgb > 1 THEN fBer4fb = fBer4fb + 1

fire2:
'Fire4fb
 IF fBer4fb >= 1 THEN
   IF fBer4fb = 1 THEN : xfFb = xf + 3: yfFb = yf + 3
  xfFb = xfFb - (RND * 5 - 1) / 7
  yfFb = yfFb + ((RND * 3 - 1.5) / 5)

'Trefferbedingung4fb
  IF xfFb >= xr - 8 AND xfFb <= xr AND yfFb > yr - 2 AND yfFb < yr + 2 THEN LOCATE yfFb, xfFb: PRINT "     ": COLOR 10: LOCATE yr, xr: PRINT ">€)": FireBorgb = 0: fBer4fb = 0: sld = sld - 3.5: SOUND 260, 1: SOUND 190, 1: SOUND 130, 2: xr = xr - 1: GOTO fire2e

  IF xfFb < 1 THEN LOCATE yfFb, 1: PRINT "    ": FireBorgb = 0: fBer4fb = 0: GOTO fire2e
 COLOR INT(RND * 3) + 8
       LOCATE yfFb - 1, xfFb: PRINT "     "
           LOCATE yfFb, xfFb: PRINT "()  "
       LOCATE yfFb + 1, xfFb: PRINT "     "
fire2e:
       
 END IF


c = INT(RND * 6)
c = c * 10
IF b1 < 2 THEN FireBorgc = 0: fBer4fc = 0
FireBorgc = FireBorgc + c / 2000
IF FireBorgc > 1 THEN fBer4fc = fBer4fc + 1
fire3:
'Fire4fc
 IF fBer4fc >= 1 THEN
 
   IF fBer4fc = 1 THEN
   xffc1 = xf - 2: yffc1 = yf - 1
   xffc2 = xf - 1: yffc2 = yf
   xffc3 = xf: yffc3 = yf + 1
   xffc4 = xf - 1: yffc4 = yf + 2
   xffc5 = xf - 2: yffc5 = yf + 3
   END IF

  d = 1.25

  IF yffc1 < 2 THEN yfFc6 = 2
  IF yffc5 > 20 THEN yffc5 = 20

  e = INT(RND * 20) + 1
  COLOR e
  xffc1 = xffc1 - 1 / d
  yffc1 = yffc1 - 1 / (d * 10)
  LOCATE yffc1, xffc1: PRINT "*  "
  LOCATE yffc1 + 1, xffc1: PRINT "    "

  xffc3 = xffc3 - 1 / d
  LOCATE yffc3, xffc3: PRINT "*  "

  xffc5 = xffc5 - 1 / d
  yffc5 = yffc5 + 1 / (d * 10)
  LOCATE yffc5 - 1, xffc5: PRINT "    "
  LOCATE yffc5, xffc5: PRINT "*  "
 
  xffc2 = xffc2 - 1 / d
  yffc2 = (yffc1 + yffc3) / 2
  LOCATE yffc2, xffc2: PRINT "*  "
  LOCATE yffc2 + 1, xffc2: PRINT "    "
 
  xffc4 = xffc4 - 1 / d
  yffc4 = (yffc3 + yffc5) / 2
  LOCATE yffc4 - 1, xffc4: PRINT "       "
  LOCATE yffc4, xffc4: PRINT "*  "

'Trefferbedingung4f
 IF xffc1 >= xr - 6 AND xffc1 <= xr THEN
  IF INT(yffc1) = yr THEN GOTO c
  IF INT(yffc2) = yr THEN GOTO c
  IF INT(yffc3) = yr THEN GOTO c
  IF INT(yffc4) = yr THEN GOTO c
  IF INT(yffc5) = yr THEN GOTO c
 GOTO c2
c: SOUND 260, 1: SOUND 190, 1: SOUND 130, 2: xr = xr - 1
   LOCATE yffc1, xffc1: PRINT "  "
   LOCATE yffc2, xffc2: PRINT "  "
   LOCATE yffc3, xffc3: PRINT "  "
   LOCATE yffc4, xffc4: PRINT "  "
   LOCATE yffc5, xffc5: PRINT "  "
   COLOR 10: LOCATE yr, xr: PRINT ">€)"
   FireBorgc = 0: fBer4fc = 0: sld = sld - 1.5
  END IF
c2:
  IF xffc1 <= 2 OR xffc2 <= 2 OR xffc3 <= 2 OR xffc4 <= 2 OR xffc5 <= 2 THEN
   LOCATE yffc1, 1: PRINT "  "
   LOCATE yffc2, 2: PRINT "  "
   LOCATE yffc3, 3: PRINT "  "
   LOCATE yffc4, 2: PRINT "  "
   LOCATE yffc5, 1: PRINT "  "
   FireBorgc = 0: fBer4fc = 0
  END IF
 END IF

b0 = b0 + .004
b1 = b1 + .006
b2 = b2 + .006
b3 = b3 + .006
b4 = b4 + .004
b5 = b5 + .004

IF b0 > 8 THEN b0 = 8
IF b1 > 8 THEN b1 = 8
IF b2 > 8 THEN b2 = 8
IF b3 > 8 THEN b3 = 8
IF b4 > 8 THEN b4 = 8
IF b5 > 8 THEN b5 = 8
                     
IF b0 < -2 THEN b0 = -2
IF b1 < -2 THEN b1 = -2
IF b2 < -2 THEN b2 = -2
IF b3 < -2 THEN b3 = -2
IF b4 < -2 THEN b4 = -2
IF b5 < -2 THEN b5 = -2
                   
END SUB

SUB Code

SCREEN 12
LINE (190, 190)-(360, 270), 8, BF
LINE (190, 190)-(360, 270), 7, B
LINE (180, 180)-(350, 260), 3, BF
LINE (180, 180)-(350, 260), 11, B

COLOR 14: LOCATE 13, 28: PRINT " ÆCotwortØ "
LOCATE 15, 25: INPUT " =>", c$

SELECT CASE LCASE$(c$)
CASE IS = "tng": Start2
CASE IS = "ds9": Start3
CASE IS = "voy": Start4
CASE IS = "test3": test3 = 1: Start3
CASE IS = "test4": test4 = 1: Start4
CASE IS = "score": highscores
CASE IS = "vorspann": Vorspann
CASE ELSE: EXIT SUB
END SELECT

END SUB

SUB Crash

'CrashFront
 IF xr1 - 1 < xr2 + 2 AND xr1 > xr2 - 1 AND yr1 <= yr2 + 1 AND yr1 >= yr2 - 1 THEN
  COLOR 10
  LOCATE yr1 - 1, xr1 - 6: PRINT "€€€€"
  LOCATE yr1, xr1 - 6:     PRINT "€€€€"
  LOCATE yr2 - 1, xr2 + 1: PRINT "€€€€"
  LOCATE yr2, xr2 + 2:      PRINT "€€€€"
  sld1 = sld1 - 1
  sld2 = sld2 - 1
  pkt1 = pkt1 - 1000
  pkt2 = pkt2 - 1000
  xr1 = xr1 - 1
  xr2 = xr2 + 1
 END IF

'CrashHeck
 IF xr1 - 14 < xr2 AND xr1 > xr2 AND yr1 <= yr2 + 1 AND yr1 >= yr2 - 1 THEN
  COLOR 10
  LOCATE yr1 - 1, xr1 - 6: PRINT "€€€€"
  LOCATE yr1, xr1 - 6:     PRINT "€€€€"
  LOCATE yr2 - 1, xr2 + 1: PRINT "€€€€"
  LOCATE yr2, xr2 + 2:      PRINT "€€€€"
  sld1 = sld1 - 1
  sld2 = sld2 - 1
  pkt1 = pkt1 - 1000
  pkt2 = pkt2 - 1000
  xr1 = xr1 + 1
  xr2 = xr2 - 1
 END IF

END SUB

SUB Defiant

 COLOR 7
 LOCATE yr - 2, xr - 6: PRINT "       "
 LOCATE yr - 1, xr - 6: PRINT "   ___   "
 LOCATE yr, xr - 6:   PRINT " <": LOCATE yr, xr - 2: PRINT "": LOCATE yr, xr: PRINT "Õ\ ": COLOR 9: LOCATE yr, xr - 4: PRINT "ÕÕ": COLOR 12: LOCATE yr, xr - 1: PRINT ")"
 LOCATE yr + 1, xr - 6: PRINT "         "

END SUB

SUB Dominion

'Zeilenwechsel
 k3 = k3 + .02
IF INT(k3) >= 1 THEN yf = yf + RND * 2 - 1: k3 = 0

'Sicherung
IF INT(yf) < 5 THEN yf = 5
IF INT(yf) > 16 THEN yf = 16

'Geschwindigkeitsregelung
SELECT CASE pkt
 CASE IS >= 10000
  S3 = 2.3
 CASE IS >= 5000
  S3 = 2
 CASE ELSE
  S3 = 1.6
 END SELECT

'Fortbewegung
xf = xf - S3 / 22

'Explosion
IF wnd >= 10 THEN
 COLOR 10
 LOCATE yf - 2, xf: PRINT "         "
 LOCATE yf - 1, xf: PRINT "    ___   "
 LOCATE yf, xf:     PRINT "/≤≤)))]> "
 LOCATE yf + 1, xf: PRINT "          "
 FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 6
 LOCATE yf - 2, xf: PRINT "         "
 LOCATE yf - 1, xf: PRINT "    ___   "
 LOCATE yf, xf:     PRINT "/≤€)≤±]± "
 LOCATE yf + 1, xf: PRINT "          "
 FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 12
 LOCATE yf - 2, xf: PRINT "    ∞    "
 LOCATE yf - 1, xf: PRINT "  ±±_∞_∞  "
 LOCATE yf, xf:     PRINT "/≤€≤)≤±]±∞"
 LOCATE yf + 1, xf: PRINT "  ± ∞± ∞  "
 FOR p = 1 TO pp! * 1500: NEXT p
 COLOR 6
 LOCATE yf - 2, xf: PRINT "  ∞ ∞  ∞ "
 LOCATE yf - 1, xf: PRINT " ∞ ±∞∞±   "
 LOCATE yf, xf:     PRINT "±±∞≤≤±≤∞∞ "
 LOCATE yf + 1, xf: PRINT " ∞ ∞±∞∞   "
 FOR p = 1 TO pp! * 1500: NEXT p
 COLOR 4
 LOCATE yf - 2, xf: PRINT " ∞  ∞   ∞"
 LOCATE yf - 1, xf: PRINT "   ∞  ∞   "
 LOCATE yf, xf:     PRINT "∞∞ ±±∞±  ∞"
 LOCATE yf + 1, xf: PRINT "∞ ∞ ∞∞ ∞  "
 FOR p = 1 TO pp! * 1500: NEXT p
 COLOR 12
 LOCATE yf - 2, xf: PRINT "         "
 LOCATE yf - 1, xf: PRINT "          "
 LOCATE yf, xf:     PRINT "   ∞∞ ∞   "
 LOCATE yf + 1, xf: PRINT "          "
 FOR p = 1 TO pp! * 2000: NEXT p
 LOCATE yf - 2, xf: PRINT "         "
 LOCATE yf - 1, xf: PRINT "          "
 LOCATE yf, xf:     PRINT "          "
 LOCATE yf + 1, xf: PRINT "          "
 xf = 70: yf = INT(RND(1) * 13) + 3
 pkt = pkt + 1000: absh = absh + 1
 wnd = 0
END IF

'Durchlauf
IF INT(xf) <= 1 THEN
 LOCATE INT(yf) - 1, 1: PRINT "         "
 LOCATE INT(yf), 1:     PRINT "          "
 yf = INT(RND * 13) + 3: xf = 70
 pkt = pkt - 500: wnd = 0
END IF

'         Wurmloch
IF INT(xf) >= 70 THEN yw = INT(yf): wber = 1
IF wber = 1 THEN
xw = 72
w = w + .1
'Sicherung
IF yw < 4 THEN yw = 4
IF yw > 16 THEN yw = 16
SELECT CASE INT(w)
CASE IS = 1
COLOR 14
LOCATE yw, xw:     PRINT "  ≤€≤  "
CASE IS = 2
COLOR 14
LOCATE yw - 1, xw: PRINT "  ± ∞  "
LOCATE yw, xw:     PRINT " ∞≤€≤∞ "
LOCATE yw + 1, xw: PRINT "  ∞ ±  "
CASE IS = 3
COLOR RND * 3 + 11
LOCATE yw - 2, xw: PRINT " ∞∞    "
LOCATE yw - 1, xw: PRINT "∞±∞ ∞  "
LOCATE yw, xw:     PRINT " ∞≤≤≤∞ "
LOCATE yw + 1, xw: PRINT "  ∞ ∞±∞"
LOCATE yw + 2, xw: PRINT "    ∞∞ "
CASE IS = 4
COLOR RND * 3 + 11
LOCATE yw - 3, xw: PRINT "  ∞∞   "
LOCATE yw - 2, xw: PRINT " ∞≤±∞  "
LOCATE yw - 1, xw: PRINT "∞≤±∞±±∞"
LOCATE yw, xw:     PRINT " ∞≤±≤∞ "
LOCATE yw + 1, xw: PRINT "∞±±∞±≤∞"
LOCATE yw + 2, xw: PRINT "  ∞±≤∞ "
LOCATE yw + 3, xw: PRINT "   ∞∞  "
CASE IS = 5
COLOR RND * 3 + 11
LOCATE yw - 3, xw: PRINT "  ∞∞   "
LOCATE yw - 2, xw: PRINT " ∞≤≤±  "
LOCATE yw - 1, xw: PRINT "∞≤±∞±≤∞"
LOCATE yw, xw:     PRINT "±≤∞∞≤± "
LOCATE yw + 1, xw: PRINT "∞±±∞±≤∞"
LOCATE yw + 2, xw: PRINT " ∞≤±≤∞ "
LOCATE yw + 3, xw: PRINT "  ∞∞∞  "
CASE IS = 6
COLOR RND * 3 + 11
LOCATE yw - 3, xw: PRINT "  ∞∞ ∞ "
LOCATE yw - 2, xw: PRINT " ∞±±±∞ "
LOCATE yw - 1, xw: PRINT "∞±±∞±±∞"
LOCATE yw, xw:     PRINT "∞±∞∞∞±±"
LOCATE yw + 1, xw: PRINT "∞±±∞±±∞"
LOCATE yw + 2, xw: PRINT " ∞±±±∞ "
LOCATE yw + 3, xw: PRINT "  ∞∞∞ ∞"
CASE IS = 7
COLOR RND * 3 + 11
LOCATE yw - 3, xw: PRINT "  ∞∞ ∞ "
LOCATE yw - 2, xw: PRINT " ∞∞∞∞∞ "
LOCATE yw - 1, xw: PRINT "∞∞∞ ∞∞∞"
LOCATE yw, xw:     PRINT "∞∞   ∞∞"
LOCATE yw + 1, xw: PRINT "∞∞∞ ∞∞∞"
LOCATE yw + 2, xw: PRINT "  ∞∞∞∞ "
LOCATE yw + 3, xw: PRINT " ∞∞  ∞ "
CASE IS = 8
COLOR RND * 3 + 11
LOCATE yw - 3, xw: PRINT "  ∞∞ ∞ "
LOCATE yw - 2, xw: PRINT " ∞±±±∞ "
LOCATE yw - 1, xw: PRINT "∞±±∞±±∞"
LOCATE yw, xw:     PRINT "∞±∞∞∞±±"
LOCATE yw + 1, xw: PRINT "∞±±∞±±∞"
LOCATE yw + 2, xw: PRINT " ∞±±±∞ "
LOCATE yw + 3, xw: PRINT "  ∞∞∞ ∞"
CASE IS = 9
COLOR RND * 3 + 11
LOCATE yw - 3, xw: PRINT "  ∞∞   "
LOCATE yw - 2, xw: PRINT " ∞≤≤±  "
LOCATE yw - 1, xw: PRINT "∞≤±∞±≤∞"
LOCATE yw, xw:     PRINT "±≤∞∞≤± "
LOCATE yw + 1, xw: PRINT "∞±±∞±≤∞"
LOCATE yw + 2, xw: PRINT " ∞≤±≤∞ "
LOCATE yw + 3, xw: PRINT "  ∞∞∞  "
CASE IS = 10
COLOR RND * 3 + 11
LOCATE yw - 3, xw: PRINT "  ∞∞   "
LOCATE yw - 2, xw: PRINT " ∞≤±∞  "
LOCATE yw - 1, xw: PRINT "∞≤±∞±±∞"
LOCATE yw, xw:     PRINT " ∞≤±≤∞ "
LOCATE yw + 1, xw: PRINT "∞±±∞±≤∞"
LOCATE yw + 2, xw: PRINT "  ∞±≤∞ "
LOCATE yw + 3, xw: PRINT "   ∞∞  "
CASE IS = 11
COLOR RND * 3 + 11
LOCATE yw - 3, xw: PRINT "       "
LOCATE yw - 2, xw: PRINT " ∞∞    "
LOCATE yw - 1, xw: PRINT "∞±∞ ∞  "
LOCATE yw, xw:     PRINT " ∞≤≤≤∞ "
LOCATE yw + 1, xw: PRINT "  ∞ ∞±∞"
LOCATE yw + 2, xw: PRINT "    ∞∞ "
LOCATE yw + 3, xw: PRINT "       "
CASE IS = 12
COLOR 14
LOCATE yw - 2, xw: PRINT "       "
LOCATE yw - 1, xw: PRINT "  ± ∞  "
LOCATE yw, xw:     PRINT " ∞≤€≤∞ "
LOCATE yw + 1, xw: PRINT "  ∞ ±  "
LOCATE yw + 2, xw: PRINT "       "
CASE IS = 13
COLOR 14
LOCATE yw - 1, xw: PRINT "       "
LOCATE yw, xw:     PRINT "  ≤€≤  "
LOCATE yw + 1, xw: PRINT "       "
CASE IS = 14
COLOR 14
LOCATE yw - 1, xw: PRINT "   |   "
LOCATE yw, xw:     PRINT " -∞±∞- "
LOCATE yw + 1, xw: PRINT "   |   "
CASE IS = 15
LOCATE yw - 1, xw: PRINT "       "
LOCATE yw, xw:     PRINT "  -+-  "
LOCATE yw + 1, xw: PRINT "       "
CASE IS = 16
LOCATE yw, xw:     PRINT "       "
w = -1: wber = 0
END SELECT
END IF

 cf31 = INT(RND * 5 + 1)
 SELECT CASE cf31
 CASE IS = 1: cf3 = 1
 CASE IS = 2: cf3 = 3
 CASE IS = 3: cf3 = 9
 CASE IS = 4: cf3 = 11
 CASE IS = 5: cf3 = 5
 END SELECT
 COLOR 7
 LOCATE INT(yf) - 2, xf: PRINT "        "
 LOCATE INT(yf) - 1, xf: PRINT "    ___   "
 LOCATE INT(yf), xf:     PRINT "/≤≤": LOCATE INT(yf), xf + 7: PRINT "]> ": COLOR cf3: LOCATE INT(yf), xf + 4: PRINT ")))"
 LOCATE INT(yf) + 1, xf: PRINT "          "

END SUB

SUB DS9

dy = 3: dx = 30
 COLOR 6
 LOCATE dy - 2, dx: PRINT "   /    \   "
 LOCATE dy - 1, dx: PRINT "  /      \  "
 LOCATE dy, dx:     PRINT " (≤≤[]≤≤) "
 LOCATE dy + 1, dx: PRINT "  \      /  "
 LOCATE dy + 2, dx: PRINT "   \    /   "

'Zusammenstî·e von DS9
IF yf <= dy + 3 AND xf >= dx AND xf <= dx + 10 THEN wnd = 10: pkt = pkt - 500
IF yr <= dy + 2 AND xr >= dx AND xr <= dx + 14 THEN yr = yr + 1

'periodisches Starten des Shuttles
shuttle = shuttle + .002
IF INT(shuttle * 20) = 20 THEN shx = dx + 3: shy = dy + 3

IF shuttle >= 1 THEN
'Fortbewegung
 shy = shy + .01
'Spaltenwechsel
 IF INT(shuttle * 20) = 25 THEN shx = shx + RND * 2 - 1: shuttle = 1.1
COLOR 9
LOCATE shy - 1, shx: PRINT "      "
LOCATE shy, shx:     PRINT " /": LOCATE shy, shx + 2: COLOR 7: PRINT "±±] ": COLOR 12
LOCATE shy + 1, shx: PRINT " Æ": LOCATE shy + 1, shx + 2: COLOR 7: PRINT "œœ  "
END IF

'Sicherung/Durchlauf des Shuttles
IF INT(shy) > 18 THEN shuttle = 0: LOCATE shy - 1, shx: PRINT "      ": LOCATE shy, shx: PRINT "      ": LOCATE shy + 1, shx: PRINT "      ": shy = 0: pkt = pkt + 1000

'Zusammensto· des Shuttles mit anderen Raumschiffen
IF INT(yr) >= INT(shy) AND INT(yr) <= INT(shy) + 1 AND INT(xr) - 10 <= INT(shx) AND INT(xr) >= INT(shx) THEN shex = 1: sld = sld - 1
IF INT(yf) >= INT(shy) AND INT(yf) <= INT(shy) + 1 AND INT(xf) <= INT(shx) AND INT(xf) >= INT(shx) - 8 THEN shex = 1: wnd = wnd + 2

'Explosion des Shuttles
IF shex = 1 AND INT(shy) <= 7 THEN shex = 0
IF shex = 1 AND INT(shy) > 7 THEN
COLOR 14
LOCATE shy - 1, shx: PRINT "      "
LOCATE shy, shx:     PRINT " /±±] "
LOCATE shy + 1, shx: PRINT " Æœœ  "
FOR p = 0 TO pp! * 2200: NEXT
COLOR 12
LOCATE shy - 1, shx: PRINT "   ∞  "
LOCATE shy, shx:     PRINT "∞/±≤± "
LOCATE shy + 1, shx: PRINT " Æœ±∞ "
FOR p = 0 TO pp! * 2200: NEXT
LOCATE shy - 1, shx: PRINT " ∞ ∞  "
LOCATE shy, shx:     PRINT "∞±≤±∞∞"
LOCATE shy + 1, shx: PRINT " ∞±∞  "
FOR p = 0 TO pp! * 2200: NEXT
COLOR 6
LOCATE shy - 1, shx: PRINT " ∞  ∞ "
LOCATE shy, shx:     PRINT "∞ ±∞ ∞"
LOCATE shy + 1, shx: PRINT " ∞ ∞∞ "
FOR p = 0 TO pp! * 2200: NEXT
LOCATE shy - 1, shx: PRINT "      "
LOCATE shy, shx:     PRINT "      "
LOCATE shy + 1, shx: PRINT "      "
shex = 0: shuttle = 0: shy = 0: pkt = pkt - 700
END IF

END SUB

SUB Einleitung1
CLS
SCREEN 12
SLEEP 2
a$ = INKEY$
IF a$ = " " THEN GOTO u2

CLS : LOCATE 4, 17: COLOR 14
PRINT "Zur Vorgeschichte :"
COLOR 11: PRINT
PRINT
PRINT "  Kirk hÑngt mit Scotty undercover in einem keimigen Klingonen-Lokal herum."
PRINT "  Gerade als das Lokal fast leer ist da passiert es:"
PRINT "   Kirk verspÅrt plîtzlich den ihm eigenen Drang,"
PRINT "   irgendwie eine Romanze zu verursachen."
PRINT
PRINT "  Doch das einzige, mit etwas Fantasie, weibliche Wesen in diesem Lokal ist"
PRINT "   ein fettes Klingonenweib (mit allerlei Metall bekleidet und gewalttÑtig"
PRINT "   aussehend, also die ideale Klingonenfrau)."
PRINT "  Offenbar ist "; CHR$(34); "sie"; CHR$(34); " mit dem fetten und besoffenen"
PRINT "   Klingonengeneral hergekommen, der dort am Boden in der PfÅtze seines"
PRINT "   hervorgebrachten liegt."
COLOR 7: LOCATE 26, 30: PRINT "<TASTE>"

logo

SLEEP
CLS
COLOR 11
LOCATE 5
PRINT "  Doch tief in Kirks, schon etwas fett gewordenen Bauch,"
PRINT "   wÑchst dieser unwiederstehliche Mannestrieb"
PRINT
PRINT "  Als dann auch noch diese schwÅlztige Hintergrundmusik ertînt,"
PRINT "   kann er sich einfach nicht mehr beherrschen,"
PRINT "   stÅrmt auf den Schrank von Frau zu,"
PRINT "   und fÑngt an, sie zuumschleimen (das, was er sonst auch immer tut)"
PRINT "  Angetan von diesem Balsakt fÑngt das Klingonenweib an, KIrk zu verprÅgeln."
PRINT
PRINT "  Der besoffene PfÅtzenschlÅrfer scheint da gar nicht so begeistert"
PRINT "   von der ganzen Sache, denn er zieht sein Butlet und wankt auf Kirk zu."
PRINT "  Geschockt von diesem unerwahrtet gewaltsamen Akt ergreifen Kirk und Scotty"
PRINT "   die Flucht."
PRINT "   (Mit dem hochbeamen gibt's Probleme, weil Scotty ja unten ist.)"
COLOR 7: LOCATE 26, 30: PRINT "<TASTE>"

logo

SLEEP: CLS
LOCATE 9, 13: COLOR 14
PRINT "Der eigentliche Punkt der Story"
PRINT : COLOR 10
PRINT "  Naja, der klingonische General ist jedenfalls stinksauer"
PRINT "   und lÑsst die Enterprei· von seiner Flotte verfolgen."
PRINT "  Kirk und Schkotty mÅssen sich noch wegen ihrem Schock"
PRINT "   von Pille behandeln lassen."
PRINT
PRINT " So darfst du ausnahmsweise mal das Schiff fliegen und musst es vor dem"
PRINT "  eifersÅchtigen Klingonen und seiner Horde kampfgieriger Untergebener schÅtzen."
COLOR 7: LOCATE 26, 30: PRINT "<TASTE>"

logo
SLEEP
u2:
Start1
END SUB

SUB Ende
r2 = 470
pi = 3.141592

DO

 a$ = INKEY$
 RANDOMIZE TIMER
 p = INT(RND * 480)
 q = INT(RND * 640)
 r = INT(RND * 30)
 u1 = RND * 6.282 - 6.282
 u2 = RND * 6.282 - 6.282
 o = INT(RND * 3) + 1
 CIRCLE (q, p), 3, 0, u1, u2, o
 CIRCLE (320, 225), r2, 0, , , 1 / 1.2
 CIRCLE (320, 225), r2, 0, , , 1.2
 r2 = r2 - .8
 IF a$ = "m" THEN menu '<- RÅckkehr zum MenÅ
LOOP UNTIL r2 <= 1 OR a$ = " "

FOR q = 0 TO 10
  FOR p = 1 TO 8
   a$ = INKEY$
   CIRCLE (300, 215), 180 + (p - 1) * 20, 0, , , .2
   CIRCLE (300, 215), 180 + p * 20, 11, .7, pi - .7, .2
   CIRCLE (300, 215), 180 + p * 20, 11, pi + .7, pi * 2 - .7, .2
   CIRCLE (300, 215), 180 + p * 20, 9, pi - .7, pi + .7, .2
   CIRCLE (300, 215), 180 + p * 20, 9, pi * 2 - .7, .7, .2
   FOR o = 0 TO pp! * 300
   IF a$ = "m" THEN menu '<- RÅckkehr zum MenÅ
   IF a$ = " " OR a$ = CHR$(27) THEN GOTO endende
   NEXT
   LOCATE 14, 19: COLOR RND * 7 + 7: PRINT "Das war ein Spiel von STRATY-PRODUCTIONS"
  NEXT
 CIRCLE (300, 215), 340, 0, , , .2
NEXT
endende:
DO: LOOP UNTIL INKEY$ = ""
SYSTEM
END SUB

SUB Enterprise1
 COLOR 7
 LOCATE yr - 2, xr - 8: PRINT "          "
 LOCATE yr - 1, xr - 3:      PRINT "___ ": COLOR 12: LOCATE yr - 1, xr - 4: PRINT "Ø": COLOR 7: LOCATE yr - 1, xr - 5: PRINT "¬": COLOR 7: LOCATE yr - 1, xr - 8: PRINT " ƒƒ": COLOR 7
 LOCATE yr, xr - 7:      PRINT "  \/": COLOR 4: LOCATE yr, xr - 2: PRINT "Æ ": COLOR 7
 LOCATE yr + 1, xr - 6:   PRINT "       "

END SUB

SUB Enterprise2

 COLOR 7
 LOCATE yr - 2, xr - 8: PRINT "            "
 LOCATE yr - 1, xr - 2:       PRINT " /Õƒƒ ": COLOR 9: LOCATE yr - 1, xr - 8: PRINT "  __": COLOR 7: LOCATE yr - 1, xr - 4: PRINT "_": COLOR 12: LOCATE yr - 1, xr - 3: PRINT ".": COLOR 7
 LOCATE yr, xr - 8:     PRINT "    \": COLOR 4: LOCATE yr, xr - 1: PRINT "/   "
 LOCATE yr + 1, xr - 8: PRINT "           "

END SUB

SUB Explosion

IF sld1 <= 0 THEN
 COLOR 14
 LOCATE yr1, xr1
 pkt1 = pkt1 - 1000
 pkt2 = pkt2 + 1000
 sld1 = 12

 COLOR 10
 LOCATE yr1 - 2, xr1 - 8: PRINT "         "
 LOCATE yr1 - 1, xr1 - 8: PRINT "  ØÀ\<Ø  "
 LOCATE yr1, xr1 - 8:     PRINT " =)±±(Ø "
 LOCATE yr1 + 1, xr1 - 8: PRINT "         "
FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 12
 LOCATE yr1 - 2, xr1 - 8: PRINT "     ∞   "
 LOCATE yr1 - 1, xr1 - 8: PRINT "  Ø±\<Ø  "
 LOCATE yr1, xr1 - 8:     PRINT " ∞)€€±Ø "
 LOCATE yr1 + 1, xr1 - 8: PRINT "  ∞ ∞    "
FOR p = 1 TO pp! * 3000: NEXT p
 COLOR 12
 LOCATE yr1 - 2, xr1 - 8: PRINT "  ∞  ∞   "
 LOCATE yr1 - 1, xr1 - 8: PRINT " ±≤≤≤±∞  "
 LOCATE yr1, xr1 - 8:     PRINT "∞±≤€€≤±∞ "
 LOCATE yr1 + 1, xr1 - 8: PRINT " ∞±∞∞±∞  "
FOR p = 1 TO pp! * 3000: NEXT p
 COLOR 12
 LOCATE yr1 - 2, xr1 - 8: PRINT "    ∞    "
 LOCATE yr1 - 1, xr1 - 8: PRINT " ∞±∞±∞   "
 LOCATE yr1, xr1 - 8:     PRINT "∞±±±∞±∞  "
 LOCATE yr1 + 1, xr1 - 8: PRINT "  ∞  ∞   "
FOR p = 1 TO pp! * 3000: NEXT p
 COLOR 12
 LOCATE yr1 - 2, xr1 - 8: PRINT "         "
 LOCATE yr1 - 1, xr1 - 8: PRINT "  ∞      "
 LOCATE yr1, xr1 - 8:     PRINT " ∞ ∞ ∞   "
 LOCATE yr1 + 1, xr1 - 8: PRINT "         "
FOR p = 1 TO pp! * 3000: NEXT p
 COLOR 12
 LOCATE yr1 - 2, xr1 - 8: PRINT "         "
 LOCATE yr1 - 1, xr1 - 8: PRINT "         "
 LOCATE yr1, xr1 - 8:     PRINT "         "
 LOCATE yr1 + 1, xr1 - 8: PRINT "         "
FOR p = 1 TO pp! * 5000: NEXT p
 COLOR 8
 LOCATE yr1 - 2, xr1 - 8: PRINT "         "
 LOCATE yr1 - 1, xr1 - 8: PRINT "  ØÀ\<Ø  "
 LOCATE yr1, xr1 - 8:     PRINT " =)±±(Ø "
 LOCATE yr1 + 1, xr1 - 8: PRINT "         "
FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 7
 LOCATE yr1 - 2, xr1 - 8: PRINT "         "
 LOCATE yr1 - 1, xr1 - 8: PRINT "  ØÀ\<Ø  "
 LOCATE yr1, xr1 - 8:     PRINT " =)±±(Ø "
 LOCATE yr1 + 1, xr1 - 8: PRINT "         "
FOR p = 1 TO pp! * 2000: NEXT p

END IF

IF sld2 <= 0 THEN
 COLOR 14
 LOCATE yr2, xr2
 pkt1 = pkt1 + 1000
 pkt2 = pkt2 - 1000
 sld2 = 12

 COLOR 10
 LOCATE yr2 - 2, xr2: PRINT "         "
 LOCATE yr2 - 1, xr2: PRINT "  -=)À\  "
 LOCATE yr2, xr2:     PRINT " Ø(}± ( "
 LOCATE yr2 + 1, xr2: PRINT "         "
FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 12
 LOCATE yr2 - 2, xr2: PRINT "     ∞   "
 LOCATE yr2 - 1, xr2: PRINT "  -±À\   "
 LOCATE yr2, xr2:     PRINT " ∞)€€±Ø "
 LOCATE yr2 + 1, xr2: PRINT "  ∞ ∞    "
FOR p = 1 TO pp! * 3000: NEXT p
 COLOR 12
 LOCATE yr2 - 2, xr2: PRINT "  ∞  ∞   "
 LOCATE yr2 - 1, xr2: PRINT " ±≤≤≤±∞  "
 LOCATE yr2, xr2:     PRINT "∞±≤€€≤±∞ "
 LOCATE yr2 + 1, xr2: PRINT " ∞±∞∞±∞  "
FOR p = 1 TO pp! * 3000: NEXT p
 COLOR 12
 LOCATE yr2 - 2, xr2: PRINT "    ∞    "
 LOCATE yr2 - 1, xr2: PRINT " ∞±∞±∞   "
 LOCATE yr2, xr2:     PRINT "∞±±±∞±∞  "
 LOCATE yr2 + 1, xr2: PRINT "  ∞  ∞   "
FOR p = 1 TO pp! * 3000: NEXT p
 COLOR 12
 LOCATE yr2 - 2, xr2: PRINT "         "
 LOCATE yr2 - 1, xr2: PRINT "  ∞      "
 LOCATE yr2, xr2:     PRINT " ∞ ∞ ∞   "
 LOCATE yr2 + 1, xr2: PRINT "         "
FOR p = 1 TO pp! * 3000: NEXT p
 COLOR 12
 LOCATE yr2 - 2, xr2: PRINT "         "
 LOCATE yr2 - 1, xr2: PRINT "         "
 LOCATE yr2, xr2:     PRINT "         "
 LOCATE yr2 + 1, xr2: PRINT "         "
FOR p = 1 TO pp! * 5000: NEXT p
 COLOR 8
 LOCATE yr2 - 2, xr2: PRINT "         "
 LOCATE yr2 - 1, xr2: PRINT "  -=)À\  "
 LOCATE yr2, xr2:     PRINT " Ø(}± ( "
 LOCATE yr2 + 1, xr2: PRINT "         "
FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 7
 LOCATE yr2 - 2, xr2: PRINT "         "
 LOCATE yr2 - 1, xr2: PRINT "  -=)À\  "
 LOCATE yr2, xr2:     PRINT " Ø(}± ( "
 LOCATE yr2 + 1, xr2: PRINT "         "
FOR p = 1 TO pp! * 2000: NEXT p
END IF

END SUB

SUB Happyend
FOR p = 200 TO pp! * 600 STEP 10
SOUND p + q, 1
q = q + 5
NEXT p
COLOR 12
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 1, xf + 4:    PRINT "∞∞"
 SOUND 60, 1: SOUND 50, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf, xf + 4:        PRINT "∞"
 LOCATE yf + 1, xf + 3:   PRINT "∞±±∞"
 LOCATE yf + 2, xf + 4:    PRINT "∞±±"
 SOUND 70, 1: SOUND 60, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf, xf + 3:        PRINT "∞±∞"
 LOCATE yf + 1, xf + 2:   PRINT "∞±€±∞"
 LOCATE yf + 2, xf + 3:    PRINT "∞±±∞"
 SOUND 100, 1: SOUND 70, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 1:   PRINT "∞±∞ "
 LOCATE yf, xf:          PRINT "∞±≤≤±∞"
 LOCATE yf + 1, xf - 1: PRINT "±≤≤±≤±≤±∞"
 LOCATE yf + 2, xf:      PRINT "∞±≤±≤±∞"
 LOCATE yf + 3, xf + 2:   PRINT "∞±∞±±∞"
 SOUND 100, 1: SOUND 80, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 1:   PRINT "∞∞ ∞ "
 LOCATE yf, xf:          PRINT "∞∞≤±±∞ "
 LOCATE yf + 1, xf - 1: PRINT "∞±≤∞∞±≤∞ "
 LOCATE yf + 2, xf:      PRINT "∞±±∞±∞ "
 LOCATE yf + 3, xf + 2:   PRINT " ≤∞∞±∞"
 SOUND 100, 1: SOUND 70, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 1:   PRINT " ∞  ∞"
 LOCATE yf, xf:          PRINT " ∞± ±  "
 LOCATE yf + 1, xf - 1: PRINT " ∞±  ∞±∞ "
 LOCATE yf + 2, xf:      PRINT " ∞∞ ∞∞ "
 LOCATE yf + 3, xf + 2:   PRINT " ±∞ ±∞"
 SOUND 120, 1: SOUND 65, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 1:   PRINT "     "
 LOCATE yf, xf:          PRINT "  ∞ ∞∞ "
 LOCATE yf + 1, xf - 1: PRINT " ∞∞    ∞ "
 LOCATE yf + 2, xf:      PRINT "∞      "
 LOCATE yf + 3, xf:      PRINT " ∞∞ ∞ ∞"
 LOCATE yf - 1, xf + 1:   PRINT "     "

 LOCATE yf + 4, xf + 1: PRINT "∞∞≤∞"
 LOCATE yf + 5, xf + 2:  PRINT "∞∞"
 SOUND 60, 1: SOUND 90, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 1:   PRINT "     "
 LOCATE yf, xf:          PRINT "  ∞   ∞"
 LOCATE yf + 1, xf - 1: PRINT " ∞       "
 LOCATE yf + 2, xf:      PRINT "       "
 LOCATE yf + 3, xf + 2:    PRINT "∞    ∞"

 LOCATE yf + 3, xf - 1:  PRINT " ±"
 LOCATE yf + 4, xf - 1:  PRINT "  ±≤±∞"
 LOCATE yf + 5, xf - 1:  PRINT " ∞ ±∞"
 LOCATE yf + 6, xf + 1:    PRINT "    "
 SOUND 80, 1: SOUND 60, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 1:   PRINT "     "
 LOCATE yf, xf:          PRINT "       "
 LOCATE yf + 1, xf - 1: PRINT "         "
 LOCATE yf + 2, xf:      PRINT "       "
 LOCATE yf + 3, xf + 1:   PRINT "      "

 LOCATE yf + 3, xf - 1:  PRINT "∞≤"
 LOCATE yf + 4, xf - 1:  PRINT " ∞≤≤≤±∞"
 LOCATE yf + 5, xf - 1:  PRINT "∞±∞≤±"
 LOCATE yf + 6, xf + 1:    PRINT "∞∞ ∞"
 SOUND 150, 1: SOUND 90, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 3, xf - 2: PRINT "∞±∞∞"
 LOCATE yf + 4, xf - 1:  PRINT " ∞≤±≤±∞"
 LOCATE yf + 5, xf - 1:  PRINT "∞±∞≤±"
 LOCATE yf + 6, xf + 1:    PRINT "∞∞ ∞"
 SOUND 170, 1: SOUND 80, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 2, xf - 2:  PRINT "∞    ∞"
 LOCATE yf + 3, xf - 3: PRINT "∞±∞  ∞"
 LOCATE yf + 4, xf - 2:  PRINT " ∞≤±∞±±∞"
 LOCATE yf + 5, xf - 2:  PRINT "∞≤∞ ±≤∞"
 LOCATE yf + 6, xf - 3: PRINT "∞±∞ ∞∞  ∞"
 LOCATE yf + 7, xf - 3: PRINT " ∞    ∞  ∞"
 SOUND 120, 1: SOUND 70, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 2, xf - 2:  PRINT "∞     ∞"
 LOCATE yf + 3, xf - 3: PRINT "∞∞       ∞"
 LOCATE yf + 4, xf - 2:  PRINT " ∞±∞ ∞±∞"
 LOCATE yf + 5, xf - 2:  PRINT "∞±∞ ∞±∞"
 LOCATE yf + 6, xf - 3: PRINT "∞∞  ∞∞  ∞"
 LOCATE yf + 7, xf - 3: PRINT "          "
 SOUND 60, 1: SOUND 80, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 2, xf - 2:  PRINT "      ∞"
 LOCATE yf + 3, xf - 3: PRINT "∞        ∞"
 LOCATE yf + 4, xf - 2:  PRINT " ∞     ∞"
 LOCATE yf + 5, xf - 2:  PRINT "     ∞ "
 LOCATE yf + 6, xf - 3: PRINT "∞       ∞"
 SOUND 50, 1: SOUND 90, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 2, xf - 2:  PRINT "       "
 LOCATE yf + 3, xf - 3: PRINT "           "
 LOCATE yf + 4, xf - 2:  PRINT "        "
 LOCATE yf + 5, xf - 2:  PRINT "      "
 LOCATE yf + 6, xf - 3: PRINT "         "

 LOCATE yf + 1, xf + 6: PRINT "∞ ±∞"
 LOCATE yf + 2, xf + 7:  PRINT "∞≤∞"
 SOUND 50, 1: SOUND 100, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf, xf + 4:      PRINT "∞±∞ ∞"
 LOCATE yf + 1, xf + 4:  PRINT "  ±≤±∞"
 LOCATE yf + 2, xf + 4:  PRINT " ∞ ±∞±∞"
 LOCATE yf + 3, xf + 6:    PRINT "   ∞"
 SOUND 120, 1: SOUND 80, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf, xf + 4:      PRINT "∞±∞ ∞∞"
 LOCATE yf + 1, xf + 4:  PRINT " ∞≤±≤±∞"
 LOCATE yf + 2, xf + 4:  PRINT "∞±∞≤±∞"
 LOCATE yf + 3, xf + 6:    PRINT "∞∞ ±∞"
 SOUND 100, 1: SOUND 70, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf, xf + 3:      PRINT "∞±∞ ∞±∞"
 LOCATE yf + 1, xf + 4:  PRINT " ∞±∞±≤±∞"
 LOCATE yf + 2, xf + 4:  PRINT "∞±∞±≤±∞"
 LOCATE yf + 3, xf + 6:    PRINT "∞∞±∞≤±"
 LOCATE yf + 4, xf + 5:   PRINT "∞  ∞ ± ∞"
 SOUND 130, 1: SOUND 90, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 2: PRINT "∞      ∞"
 LOCATE yf, xf + 3:      PRINT "∞∞   ∞±∞"
 LOCATE yf + 1, xf + 4:  PRINT " ∞∞ ∞±≤± "
 LOCATE yf + 2, xf + 4:  PRINT "∞∞ ∞±≤±"
 LOCATE yf + 3, xf + 6:    PRINT "∞ ∞±≤±"
 LOCATE yf + 4, xf + 5:   PRINT "   ∞ ±≤∞"
 LOCATE yf + 5, xf + 7:     PRINT "  ∞ ∞±"
 SOUND 150, 1: SOUND 85, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 2: PRINT "        ∞"
 LOCATE yf, xf + 3:      PRINT "∞     ∞±∞"
 LOCATE yf + 1, xf + 4:  PRINT "     ∞±≤±"
 LOCATE yf + 2, xf + 4:  PRINT "∞   ∞±≤±"
 LOCATE yf + 3, xf + 6:    PRINT "   ∞±≤±"
 LOCATE yf + 4, xf + 5:   PRINT "   ∞±≤±≤±"
 LOCATE yf + 5, xf + 7:     PRINT "  ∞ ∞±∞"
 SOUND 100, 1: SOUND 80, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 2: PRINT "         ∞"
 LOCATE yf, xf + 3:      PRINT "       ∞±∞"
 LOCATE yf + 1, xf + 4:  PRINT "      ∞±≤±"
 LOCATE yf + 2, xf + 4:  PRINT "      ∞≤±∞"
 LOCATE yf + 3, xf + 6:    PRINT "   ∞±≤≤±"
 LOCATE yf + 4, xf + 5:   PRINT " ∞ ∞≤≤±±≤±"
 LOCATE yf + 5, xf + 6:    PRINT " ∞±± ∞±±"
 LOCATE yf + 6, xf + 7:     PRINT "∞     ∞∞"
 SOUND 150, 1: SOUND 90, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf - 1, xf + 9:       PRINT "      "
 LOCATE yf, xf + 9:           PRINT "   ∞∞"
 LOCATE yf + 1, xf + 8:      PRINT "   ∞±±∞"
 LOCATE yf + 2, xf + 7:     PRINT "   ∞ ±≤±∞"
 LOCATE yf + 3, xf + 6:    PRINT "  ∞ ∞±≤≤±"
 LOCATE yf + 4, xf + 4:  PRINT "∞  ∞ ± ∞±∞±∞"
 LOCATE yf + 5, xf + 5:   PRINT "∞  ±≤∞∞ ∞∞±"
 LOCATE yf + 6, xf + 6:    PRINT " ±∞ ∞ ∞  ∞"
 SOUND 110, 1: SOUND 80, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf, xf + 9:           PRINT "     "
 LOCATE yf + 1, xf + 8:      PRINT "   ∞ ∞ "
 LOCATE yf + 2, xf + 7:     PRINT "   ∞ ∞±∞ "
 LOCATE yf + 3, xf + 6:    PRINT "     ∞±≤±"
 LOCATE yf + 4, xf + 4:  PRINT "     ∞ ±≤∞≤ "
 LOCATE yf + 5, xf + 5:   PRINT "    ±∞ ±± ∞"
 LOCATE yf + 6, xf + 6:    PRINT "∞ ∞ ∞∞  ∞ "
 LOCATE yf + 7, xf + 4:  PRINT " ∞   ∞ "
 SOUND 160, 1: SOUND 75, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 1, xf + 8:      PRINT "       "
 LOCATE yf + 2, xf + 7:     PRINT "         "
 LOCATE yf + 3, xf + 6:    PRINT "       ∞ "
 LOCATE yf + 4, xf + 5:   PRINT "      ∞±∞± "
 LOCATE yf + 5, xf + 5:   PRINT "    ∞ ∞≤± ∞"
 LOCATE yf + 6, xf + 6:    PRINT "    ∞±    "
 LOCATE yf + 7, xf + 4:  PRINT "    ∞  "
 SOUND 40, 1: SOUND 70, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 3, xf + 6:    PRINT "         "
 LOCATE yf + 4, xf + 5:   PRINT "       ∞ ∞ "
 LOCATE yf + 5, xf + 7:     PRINT "     ±± ∞"
 LOCATE yf + 6, xf + 6:    PRINT "     ∞± ∞ "
 LOCATE yf + 7, xf + 4:  PRINT "       "
 SOUND 50, 1: SOUND 62, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 4, xf + 5:   PRINT "           "
 LOCATE yf + 5, xf + 7:     PRINT "     ∞∞  "
 LOCATE yf + 6, xf + 6:    PRINT "     ∞    "
 SOUND 60, 1: SOUND 50, 1
FOR p = 0 TO pp! * 3000: NEXT
 LOCATE yf + 5, xf + 3:  PRINT "             "
 LOCATE yf + 6, xf + 3:  PRINT "             "
FOR p = 0 TO pp! * 3000: NEXT

SCREEN 12
CLS
FOR p = 1 TO 500
xps = INT(RND * 639)
yps = INT(RND * 470)
PSET (xps, yps), 15
NEXT p

SLEEP 2
COLOR 12
LOCATE 2, 30: PRINT "E N D E "
COLOR 9
LOCATE 5, 3: PRINT "Die Klingelonen wurden (bis auf zwei geistig zurÅckgebliebene) alle zerstîrt"
LOCATE 7, 3: PRINT "Den Borks wurde dank Deines Sieges fÅr immer die Festplatte gelîscht."
LOCATE 9, 3: PRINT "Also hast Du wieder mal die komplette Galaxie gerettet, allen Buh-Wesen "
LOCATE 11, 3: PRINT "heimgeleuchtet und mal wieder ein Happy End bekommen, wie in jedem Computer-"
LOCATE 13, 3: PRINT "spiel (ich will Death-Ends). Na gut, Du bist der Held und die anderen sind's"
LOCATE 15, 3: PRINT "nicht. Trotzdem mu·t Du nachher abtrocknen... *grins*"
LOCATE 17, 3: PRINT "Somit ist das erste Kapitel voll abgeschlossen, Gratulation... "
LOCATE 19, 3: PRINT "Also dann bis zum nÑchsten Teil von Universe-Adventure..."
LOCATE 21, 18: PRINT "(entnommen aus SpaceShot)"
SLEEP

DO: LOOP UNTIL INKEY$ = CHR$(27)
menu
END SUB

SUB highscores

END SUB

SUB Klingonen

SELECT CASE INT((xf) * 10)
CASE IS = 100
K1 = INT(RND(1) * 3) - 1
CASE IS = 200
K1 = INT(RND(1) * 3) - 1
CASE IS = 300
K1 = INT(RND(1) * 3) - 1
CASE IS = 400
K1 = INT(RND(1) * 3) - 1
CASE IS = 500
K1 = INT(RND(1) * 3) - 1
CASE IS = 600
K1 = INT(RND(1) * 3) - 1
CASE IS = 700
K1 = INT(RND(1) * 3) - 1
CASE ELSE
K1 = 0
END SELECT

yf = yf + K1
IF yf < 2 THEN yf = 2
IF yf > 18 THEN yf = 18

'Geschwindigkeitsregelung
SELECT CASE pkt
CASE IS >= 5000
S1 = 14 / 10
CASE IS >= 10000
S1 = 16 / 10
CASE ELSE
S1 = 1
END SELECT

xf = xf - S1 / 30
         

IF xf <= 1 THEN xf = 73: LOCATE yf, 1: PRINT "      ": LOCATE yf + 1, 1: PRINT "     ": yf = INT(RND(1) * 17) + 2: pkt = pkt - 500: wnd = 0

IF wnd >= 10 THEN
 COLOR 10
LOCATE yf - 1, xf: PRINT "       "
LOCATE yf, xf:     PRINT "/Õ(≤±) "
LOCATE yf + 1, xf: PRINT " Æ) / "
LOCATE yf + 2, xf: PRINT "      "
 FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 6
LOCATE yf - 1, xf: PRINT " \∞±∞/ "
LOCATE yf, xf:     PRINT "/∞(≤±∞)"
LOCATE yf + 1, xf: PRINT "Æ∞±≤±/ "
LOCATE yf + 2, xf: PRINT " /∞±∞\ "
 FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 12
LOCATE yf - 1, xf: PRINT " ∞∞±∞∞ "
LOCATE yf, xf:     PRINT "∞≤≤≤±±∞"
LOCATE yf + 1, xf: PRINT "∞±≤±≤∞ "
LOCATE yf + 2, xf: PRINT " ∞∞±∞  "
 FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 12
LOCATE yf - 1, xf: PRINT "  ∞∞ ∞ "
LOCATE yf, xf:     PRINT " ∞±≤±∞ "
LOCATE yf + 1, xf: PRINT "  ∞±∞ ∞"
LOCATE yf + 2, xf: PRINT "   ∞ ∞ "
 FOR p = 1 TO pp! * 2000: NEXT p
 COLOR 12
LOCATE yf - 1, xf: PRINT "       "
LOCATE yf, xf:     PRINT "  ∞ ∞∞ "
LOCATE yf + 1, xf: PRINT "   ∞   "
LOCATE yf + 2, xf: PRINT "       "
 FOR p = 1 TO pp! * 2000: NEXT p
LOCATE yf - 1, xf: PRINT "       "
LOCATE yf, xf:     PRINT "       "
LOCATE yf + 1, xf: PRINT "       "
LOCATE yf + 2, xf: PRINT "       "
 xf = 73: yf = INT(RND * 17) + 2
 pkt = pkt + 1000: absh = absh + 1
 wnd = 0
END IF


COLOR 6
LOCATE yf - 1, xf:  PRINT "       "
LOCATE yf, xf:      PRINT "/Õ(≤€) "
LOCATE yf + 1, xf + 3: PRINT " /  ": COLOR 12: LOCATE yf + 1, xf: PRINT " Æ}"
LOCATE yf + 2, xf:  PRINT "      "

END SUB

SUB logo

PSET (263, 360)
DRAW "s2 c9"
DRAW "l6 m-6,2 m-6,4 m-4,6 u-4 f2 r2 m+4,-2 m+2,-4 u-8 m-2,6 m-4,6 m-2,6 u-4 f4 r4 m+6,-2 m+2,-4 m-2,-6 u6 m+2,-6 m+4,2 r4 m+6,-2 e4 u6 m-2,-6 h2 m-4,-2 m-6,-2"
DRAW "bm-0,6"
PAINT STEP(0, 0), 1, 9
DRAW "c9 r-4 g2 g0 u-4 m+2,4 m+4,2 r2 e4 u4 h2 m-4,-2"
PAINT STEP(0, 2), 0, 9
CIRCLE STEP(-3, 6), 16, 9
CIRCLE STEP(0, 0), 20, 9
PAINT STEP(18, 0), 1, 9

END SUB

SUB loose1
COLOR 14
LOCATE 6, 30: PRINT "DU VOLLTROTTEL !!!"
COLOR 12
LOCATE 8, 28: PRINT "Durch diese Heldentat"
LOCATE 9, 26: PRINT "bist du am Ende der alten"
LOCATE 10, 29: PRINT "Enterprise schuld !"
LOCATE 12, 20: PRINT "Zum GlÅck bist du mit bei drauf gegangen,"
LOCATE 13, 22: PRINT "sonst hÑtte dich Paramount Pictures"
LOCATE 14, 21: PRINT "auf Schadensersatz verklagt, dass du"
LOCATE 15, 27: PRINT "in den zukÅnftigen Folgen"
LOCATE 16, 23: PRINT "alle HaupthandlungstrÑger spielst."
COLOR 7: LOCATE 18, 30: PRINT "< ESC - weiter >"
DO: LOOP UNTIL INKEY$ = CHR$(27)
menu
END SUB

SUB loose2
COLOR 14
LOCATE 5, 22:  PRINT "DU inkompetenter UnterfÑhnrich !!!"
COLOR 12
LOCATE 7, 24: PRINT "Du hast Dich undiszipliniert"
LOCATE 8, 33: PRINT "verhalten!"
LOCATE 9, 28: PRINT "Pikard ist stinksauer"
LOCATE 10, 23: PRINT "und zutiefst von dir enttÑuscht."
LOCATE 11, 28: PRINT "Er bringt dich wegen"
LOCATE 12, 30: PRINT "INSUBORDINATION"
LOCATE 13, 28: PRINT "vor's Kriegsgericht."
COLOR 7: LOCATE 17, 30: PRINT "< ESC - weiter >"
DO: LOOP UNTIL INKEY$ = CHR$(27)
menu
END SUB

SUB loose3
DO: COLOR 14
LOCATE 5, 28:  PRINT "Du hast es geschafft!"
COLOR 12
LOCATE 7, 23: PRINT "Mit deiner schlechten Arbeit hast"
LOCATE 8, 26: PRINT "du der Sternenflotte gro·en"
LOCATE 9, 31: PRINT "Schaden zugefÅgt."
LOCATE 11, 26: PRINT "Zur Belohnung wirst du vom"
LOCATE 12, 30: PRINT "Dominion in einen"
LOCATE 13, 33: PRINT "Formwandler"
LOCATE 14, 33: PRINT "verwandelt."
COLOR 7: LOCATE 17, 30: PRINT "< ESC - weiter >"
 LOOP UNTIL INKEY$ = CHR$(27)
menu
END SUB

SUB loose4

FOR p = 1 TO pp! * 13 STEP 1
SELECT CASE p
CASE IS = 1

SOUND 40, 1
SOUND 80, 1

 COLOR 14
 LOCATE yr - 2, xr - 8: PRINT "              "
 LOCATE yr - 1, xr - 8: PRINT "      _____   "
 LOCATE yr, xr - 8:     PRINT "   ÕØÕ/      "
 LOCATE yr + 1, xr - 8: PRINT "              "
CASE IS = 2

SOUND 140, 1
SOUND 200, 1

 COLOR 4
 LOCATE yr - 2, xr - 8: PRINT "              "
 LOCATE yr - 1, xr - 8: PRINT "      _____   "
 LOCATE yr, xr - 8:     PRINT "   ÕØÕ±/∞     "
 LOCATE yr + 1, xr - 8: PRINT "       ∞      "
CASE IS = 3

SOUND 300, 1
SOUND 230, 1

 COLOR 4
 LOCATE yr - 2, xr - 8: PRINT "              "
 LOCATE yr - 1, xr - 8: PRINT "      _∞___   "
 LOCATE yr, xr - 8:     PRINT "  ∞ÕØ±≤±∞     "
 LOCATE yr + 1, xr - 8: PRINT "      ∞ ±∞    "
CASE IS = 4

SOUND 40, 1
SOUND 150, 1

 COLOR 6
 LOCATE yr - 2, xr - 8: PRINT "      ∞       "
 LOCATE yr - 1, xr - 8: PRINT "     ∞±∞∞__   "
 LOCATE yr, xr - 8:     PRINT "  ∞Õ∞±≤≤±∞∞   "
 LOCATE yr + 1, xr - 8: PRINT "     ∞∞±±∞    "
CASE IS = 5

SOUND 140, 1
SOUND 100, 1

 COLOR 12
 LOCATE yr - 2, xr - 8: PRINT "     ∞±∞      "
 LOCATE yr - 1, xr - 8: PRINT "   ∞∞±≤±±∞_   "
 LOCATE yr, xr - 8:     PRINT "  ∞±±≤±≤±±∞∞  "
 LOCATE yr + 1, xr - 8: PRINT "   ∞±∞∞±∞±∞   "
CASE IS = 6

SOUND 40, 1
SOUND 120, 1

 COLOR 12
 LOCATE yr - 2, xr - 8: PRINT "     ∞±∞∞     "
 LOCATE yr - 1, xr - 8: PRINT "   ∞±≤±±±±∞   "
 LOCATE yr, xr - 8:     PRINT "  ∞±≤±∞±≤±∞∞  "
 LOCATE yr + 1, xr - 8: PRINT "   ∞±∞ ∞±∞    "
CASE IS = 7

SOUND 140, 1
SOUND 60, 1

 COLOR 12
 LOCATE yr - 2, xr - 8: PRINT "    ∞∞±∞∞±∞∞  "
 LOCATE yr - 1, xr - 8: PRINT "  ∞±±∞±±±≤±∞∞ "
 LOCATE yr, xr - 8:     PRINT "   ∞±±∞∞±±∞∞  "
 LOCATE yr + 1, xr - 8: PRINT "   ∞±∞  ∞±∞   "
CASE IS = 8

SOUND 40, 1
SOUND 60, 1

 COLOR 12
 LOCATE yr - 2, xr - 8: PRINT "     ∞±∞∞±∞   "
 LOCATE yr - 1, xr - 8: PRINT "  ∞±∞∞∞∞±±±∞∞ "
 LOCATE yr, xr - 8:     PRINT "   ∞±∞ ∞∞±∞∞  "
 LOCATE yr + 1, xr - 8: PRINT "  ∞∞     ∞∞   "
CASE IS = 9

SOUND 160, 1
SOUND 40, 1

 COLOR 6
 LOCATE yr - 2, xr - 8: PRINT "     ∞∞  ∞∞   "
 LOCATE yr - 1, xr - 8: PRINT "  ∞∞∞∞∞ ∞±±∞∞ "
 LOCATE yr, xr - 8:     PRINT "   ∞∞    ∞∞∞  "
 LOCATE yr + 1, xr - 8: PRINT "  ∞           "
CASE IS = 10

SOUND 80, 1
SOUND 60, 1

 COLOR 4
 LOCATE yr - 2, xr - 8: PRINT "         ∞∞   "
 LOCATE yr - 1, xr - 8: PRINT "  ∞∞ ∞  ∞ ∞ ∞ "
 LOCATE yr, xr - 8:     PRINT "    ∞    ∞ ∞  "
 LOCATE yr + 1, xr - 8: PRINT "              "
CASE IS = 11

SOUND 40, 1
SOUND 60, 1

 LOCATE yr - 2, xr - 8: PRINT "              "
 LOCATE yr - 1, xr - 8: PRINT "              "
 LOCATE yr, xr - 8:     PRINT "              "
 LOCATE yr + 1, xr - 8: PRINT "              "
END SELECT
NEXT
COLOR 14
LOCATE 7, 19:  PRINT "Schon wieder ein Selbstmordkommando!!"
COLOR 12
LOCATE 9, 22: PRINT "Ganz nach Janeway's Art hast du,"
LOCATE 10, 27: PRINT "das Schiff geopfert,"
LOCATE 11, 26: PRINT "um die Welt zu retten."
LOCATE 12, 23: PRINT "Doch leider hat es diesmal"
LOCATE 13, 30: PRINT "nichts gebracht."
LOCATE 14, 27: PRINT "so hast du das Spiel "
LOCATE 15, 32: PRINT "VERLOREN!"
COLOR 7: LOCATE 17, 28: PRINT "< ESC - weiter >"
DO: LOOP UNTIL INKEY$ = CHR$(27)
menu
END SUB

SUB menu
' Lîschen des Tastenpuffers
DO
    u$ = INKEY$
LOOP UNTIL u$ = ""

ma:
CLS : m = -1
SCREEN 12

CIRCLE (320, 225), 201, 11
LINE (0, 149)-(639, 149), 11
LINE (0, 301)-(639, 301), 11

CIRCLE (320, 225), 200, 1
PAINT (320, 225), 1, 1
LINE (0, 150)-(639, 150), 1
LINE (0, 300)-(639, 300), 1
PAINT (3, 225), 1, 1
PAINT (600, 225), 1, 1

CIRCLE (320, 225), 151, 11
LINE (0, 199)-(639, 199), 11
LINE (0, 251)-(639, 251), 11

CIRCLE (320, 225), 150, 0
PAINT (320, 225), 0, 0
LINE (0, 200)-(639, 200), 0
LINE (0, 250)-(639, 250), 0
PAINT (3, 225), 0, 0
PAINT (600, 225), 0, 0
PAINT (1, 1), 8, 11
PAINT (1, 420), 8, 11

LOCATE 7, 37: COLOR 14: PRINT "…ÕÕÕÕÕÕª"
LOCATE 8, 37:           PRINT "∫ MENö ∫"
LOCATE 9, 37:           PRINT "»ÕÕÕÕÕÕº"
COLOR 12
LOCATE 10, 37:          PRINT "UnAd 1.3"
COLOR 9
LOCATE 15, 7: PRINT "UNIVERSE"
LOCATE 15, 65: PRINT "ADVENTURE"
COLOR 3
LOCATE 28, 1: PRINT "        *** UNIVERSE ADVENTURE is programmed by Philipp Strathausen ***         "
LINE (0, 431)-(639, 431), 3
LINE (0, 447)-(639, 447), 3

m = 1

mb:

DO
    a$ = INKEY$
    IF a$ = CHR$(0) + CHR$(75) THEN m = m - 1
    IF a$ = CHR$(0) + CHR$(72) THEN m = m - 1
    IF a$ = CHR$(0) + CHR$(80) THEN m = m + 1
    IF a$ = CHR$(0) + CHR$(77) THEN m = m + 1
    IF a$ = CHR$(27) THEN Ende
    IF a$ = "e" THEN END
    IF a$ = CHR$(13) THEN GOTO Me
    IF a$ = " " THEN GOTO Me
    IF m <= 0 THEN m = 6
    IF m >= 7 THEN m = 1
    IF m = 1 THEN : LINE (255, 170)-(390, 195), 10, B: LOCATE 12, 36: COLOR 11: PRINT "neues Spiel":     Ml = 1:  ELSE LOCATE 12, 36: COLOR 3: PRINT "neues Spiel":     LINE (255, 170)-(390, 195), 2, B
    IF m = 2 THEN : LINE (255, 202)-(390, 227), 10, B: LOCATE 14, 34: COLOR 11: PRINT "Spielanleitung":  Ml = 2:  ELSE LOCATE 14, 34: COLOR 3: PRINT "Spielanleitung":  LINE (255, 202)-(390, 227), 2, B
    IF m = 3 THEN : LINE (255, 234)-(390, 259), 10, B: LOCATE 16, 37: COLOR 11: PRINT "Codewort":        Ml = 3:  ELSE LOCATE 16, 37: COLOR 3: PRINT "Codewort":        LINE (255, 234)-(390, 259), 2, B
    IF m = 4 THEN : LINE (255, 266)-(390, 291), 10, B: LOCATE 18, 36: COLOR 11: PRINT "2 Spieler":       Ml = 4:  ELSE LOCATE 18, 36: COLOR 3: PRINT "2 Spieler":       LINE (255, 266)-(390, 291), 2, B
    IF m = 5 THEN : LINE (255, 298)-(390, 323), 10, B: LOCATE 20, 34: COLOR 11: PRINT "Spiel verlassen": Ml = 5:  ELSE LOCATE 20, 34: COLOR 3: PRINT "Spiel verlassen": LINE (255, 298)-(390, 323), 2, B
    IF m = 6 THEN : LINE (255, 330)-(390, 355), 10, B: LOCATE 22, 34: COLOR 11: PRINT "Demo von UnAd 2": Ml = 6:  ELSE LOCATE 22, 34: COLOR 3: PRINT "Demo von UnAd 2": LINE (255, 330)-(390, 355), 2, B
LOOP

Me:

SELECT CASE Ml
     CASE IS = 1
      Einleitung1
     CASE IS = 2
      Anleitung
     CASE IS = 3
      Code
     CASE IS = 4
      Start2Spieler
     CASE IS = 5
      Ende
     CASE IS = 6
      RUN "test.bas"
END SELECT
  GOTO ma
END SUB

SUB Romulaner

SELECT CASE INT((xf) * 10)
CASE IS = 100
K2 = INT(RND(1) * 3) - 1
CASE IS = 150
K2 = INT(RND(1) * 3) - 1
CASE IS = 200
K2 = INT(RND(1) * 3) - 1
CASE IS = 250
K2 = INT(RND(1) * 3) - 1
CASE IS = 300
K2 = INT(RND(1) * 3) - 1
CASE IS = 350
K2 = INT(RND(1) * 3) - 1
CASE IS = 400
K2 = INT(RND(1) * 3) - 1
CASE IS = 450
K2 = INT(RND(1) * 3) - 1
CASE IS = 500
K2 = INT(RND(1) * 3) - 1
CASE IS = 550
K2 = INT(RND(1) * 3) - 1
CASE IS = 600
K2 = INT(RND(1) * 3) - 1
CASE IS = 650
K2 = INT(RND(1) * 3) - 1
CASE IS = 700
K2 = INT(RND(1) * 3) - 1
CASE ELSE
K2 = 0
END SELECT

yf = yf + K2
IF yf < 2 THEN yf = 2
IF yf > 18 THEN yf = 18

'Geschwindigkeitsregelung
SELECT CASE pkt
 CASE IS >= 5000
  S2 = 17 / 10
 CASE IS >= 10000
  S2 = 22 / 10
 CASE ELSE
  S2 = 13 / 10
END SELECT

xf = xf - S2 / 30
        

IF xf <= 2 THEN xf = 73: LOCATE yf, 2: PRINT "      ": LOCATE yf + 1, 2: PRINT "     ": yf = INT(RND(1) * 17) + 2: pkt = pkt - 500: wnd = 0


IF wnd >= 10 THEN

COLOR 10
LOCATE yf - 1, xf: PRINT "       "
LOCATE yf, xf:     PRINT "/Õ≤±> "
LOCATE yf + 1, xf: PRINT " _//   "
LOCATE yf + 2, xf: PRINT "      "
FOR p = 1 TO pp! * 2000: NEXT p
COLOR 6
LOCATE yf - 1, xf - 1: PRINT " ∞   ∞±∞ "
LOCATE yf, xf - 1:     PRINT " /∞Õ∞±>  "
LOCATE yf + 1, xf - 1: PRINT "∞ _∞/±∞  "
LOCATE yf + 2, xf - 1: PRINT "    ∞∞   "
FOR p = 1 TO pp! * 2000: NEXT p
COLOR 12
LOCATE yf - 1, xf - 1: PRINT " ∞ ∞ ∞±∞ "
LOCATE yf, xf - 1:     PRINT "∞±∞±∞±≤∞∞"
LOCATE yf + 1, xf - 1: PRINT " ∞∞∞±≤∞≤ "
LOCATE yf + 2, xf - 1: PRINT "   ∞∞∞ ∞∞"
FOR p = 1 TO pp! * 2000: NEXT p
COLOR 6
LOCATE yf - 1, xf - 1: PRINT " ∞ ∞ ∞∞ ∞"
LOCATE yf, xf - 1:     PRINT "∞ ∞±∞ ∞∞ "
LOCATE yf + 1, xf - 1: PRINT " ∞ ∞∞±∞±∞"
LOCATE yf + 2, xf - 1: PRINT "     ∞ ∞ "
FOR p = 1 TO pp! * 2000: NEXT p
COLOR 6
LOCATE yf - 1, xf - 1: PRINT "         "
LOCATE yf, xf - 1:     PRINT " ∞ ∞∞ ∞  "
LOCATE yf + 1, xf - 1: PRINT "     ∞ ∞ "
LOCATE yf + 2, xf - 1: PRINT "         "
FOR p = 1 TO pp! * 2000: NEXT p
LOCATE yf - 1, xf - 1: PRINT "         "
LOCATE yf, xf - 1:     PRINT "         "
LOCATE yf + 1, xf - 1: PRINT "         "
LOCATE yf + 2, xf - 1: PRINT "         "
xf = 73: yf = INT(RND(1) * 17) + 2
pkt = pkt + 1000: absh = absh + 1
wnd = 0
END IF

COLOR 18
LOCATE yf - 1, xf:   PRINT "       "
LOCATE yf, xf:       PRINT "/Õ≤€> "
LOCATE yf + 1, xf + 2: PRINT "//   ": COLOR 26: LOCATE yf + 1, xf: PRINT " _"
LOCATE yf + 2, xf:   PRINT "      "

END SUB

SUB Sicherung1

 IF xr < 9 THEN xr = 9
 IF xr > 70 THEN xr = 70
 IF yr < 3 THEN yr = 3
 IF yr > 19 THEN yr = 19

END SUB

SUB Sicherung2

 IF xr < 9 THEN xr = 9
 IF xr > 70 THEN xr = 70
 IF yr < 3 THEN yr = 3
 IF yr > 19 THEN yr = 19

END SUB

SUB Sicherung21

 IF xr1 < 9 THEN xr1 = 9
 IF xr1 > 70 THEN xr1 = 70
 IF yr1 < 3 THEN yr1 = 3
 IF yr1 > 19 THEN yr1 = 19

 IF xr2 < 10 THEN xr2 = 10
 IF xr2 > 71 THEN xr2 = 71
 IF yr2 < 3 THEN yr2 = 3
 IF yr2 > 19 THEN yr2 = 19

END SUB

SUB Sicherung3

 IF xr < 7 THEN xr = 7
 IF xr > 76 THEN xr = 76
 IF yr < 3 THEN yr = 3
 IF yr > 19 THEN yr = 19

END SUB

SUB Sicherung4

 IF xr < 7 THEN xr = 7
 IF xr > 70 THEN xr = 70
 IF yr < 3 THEN yr = 3
 IF yr > 19 THEN yr = 19

END SUB

SUB Spieler1

 COLOR 3
 LOCATE yr1 - 2, xr1 - 8: PRINT "        "
 COLOR 12: LOCATE yr1 - 1, xr1 - 3: PRINT "<Ø  ": COLOR 7: LOCATE yr1 - 1, xr1 - 7: PRINT " ØÀ\": COLOR 3
 LOCATE yr1, xr1 - 8:      PRINT " =)±±": COLOR 6: LOCATE yr1, xr1 - 2: PRINT "(Ø ": COLOR 7
 LOCATE yr1 + 1, xr1 - 7:   PRINT "        "

END SUB

SUB Spieler2

 COLOR 7
 LOCATE yr2 - 2, xr2:   PRINT "        ": COLOR 14
 LOCATE yr2 - 1, xr2:   PRINT "  -=": COLOR 7: LOCATE yr2 - 1, xr2 + 4: PRINT ")À": COLOR 13: LOCATE yr2 - 1, xr2 + 6: PRINT "\ ": COLOR 13
 LOCATE yr2, xr2 + 3:      PRINT "}± ( ": COLOR 6: LOCATE yr2, xr2: PRINT " Ø(": COLOR 7
 LOCATE yr2 + 1, xr2:   PRINT "        "

END SUB

SUB Start1  '-> Level1
CLS
SCREEN 0
xr = 25: yr = 12
xf = 73: yf = INT(RND(1) * 17) + 2: wnd = 0
pkt = 0
Sterne
RANDOMIZE TIMER
Anzeige1a

DO

'Tasten
 a$ = INKEY$
 IF a$ = "s" THEN Sterne
 IF a$ = CHR$(27) THEN menu
 IF a$ = CHR$(0) + CHR$(75) THEN xr = xr - 1
 IF a$ = CHR$(0) + CHR$(77) THEN xr = xr + 1
 IF a$ = CHR$(0) + CHR$(72) THEN yr = yr - 1
 IF a$ = CHR$(0) + CHR$(80) THEN yr = yr + 1
Sicherung1
Enterprise1

'periodisches Erscheinen der Sterne
SterneK = SterneK + 1 / 600
IF SterneK >= 4 THEN SterneK = 0: Sterne

'Schilde
IF xr < xf + 10 AND xr > xf AND yr <= yf + 2 AND yr >= yf THEN COLOR 10: LOCATE yr - 1, xr - 6: PRINT "\∞∞/": LOCATE yr, xr - 6: PRINT "/∞∞\": wnd = 10: sld = sld - 1: pkt = pkt - 1000: IF absh >= 0 THEN absh = absh - 1

Klingonen
Anzeige1b

IF a$ = " " AND fBer1a = 0 THEN fBer1a = 1
IF a$ = "h" AND fBer1b = 0 THEN fBer1b = 1
IF a$ = "g" AND fBer1c = 0 THEN fBer1c = 1

'Fire1a
 IF fBer1a >= 1 THEN          '>> "fBer" bedeutet Feuerbereitschaft
   fBer1a = fBer1a + 1
 IF fBer1a = 2 THEN xf1a = xr - 3: yf1a = yr
  xf1a = xf1a + 2 / 12
  COLOR 14
  LOCATE yf1a, xf1a: PRINT " -*)"
  COLOR 10
  LOCATE yf1a, xf1a: PRINT " -:)"
  COLOR 12
  LOCATE yf1a, xf1a: PRINT " -+}"

'Trefferbedingung1'
  IF xf1a < xf + 2 AND xf1a > xf AND yf1a <= yf + 1 AND yf1a >= yf THEN COLOR 10: LOCATE yf1a, xf1a: PRINT "(€<": fBer1a = 0: wnd = wnd + 5
 
  IF xf1a > 75 THEN LOCATE yf1a, 75: PRINT "     ": fBer1a = 0
 END IF

'Fire1b
 IF fBer1b >= 1 THEN
  fBer1b = fBer1b + 1
 IF fBer1b = 2 THEN xf1b = xr - 4: yf1b = yr - 1
  xf1b = xf1b + 1

  COLOR 5
  LOCATE yf1b, xf1b: PRINT " -+*"
  COLOR 14
  LOCATE yf1b, xf1b: PRINT " -+0"
  COLOR 12
  LOCATE yf1b, xf1b: PRINT " --+"

'Trefferbedingung2'
  IF xf1b < xf + 2 AND xf1b > xf AND yf1b <= yf + 1 AND yf1b >= yf THEN COLOR 10: LOCATE yf1b, xf1b: PRINT "(€<": fBer1b = 0: fBer1b = 0: wnd = wnd + 1

  IF xf1b > 75 THEN fBer1b = 0: LOCATE yf1b, 75: PRINT "     ": fBer1b = 0
 END IF

'Fire1c
 IF fBer1c >= 1 THEN
  fBer1c = fBer1c + 1
 IF fBer1c = 2 THEN xf1c = xr - 7: yf1c = yr
  xf1c = xf1c - 1
  COLOR 13
  LOCATE yf1c, xf1c: PRINT "(+ "
  COLOR 14
  LOCATE yf1c, xf1c: PRINT "{+- "
  COLOR 12
  LOCATE yf1c, xf1c: PRINT "((+ "

'Trefferbedingung3
  IF xf1c < xf + 2 AND xf1c > xf AND yf1c <= yf + 1 AND yf1c >= yf THEN COLOR 10: LOCATE yf1c, xf1c: PRINT ">€)": fBer1c = 0: fBer1c = 0: wnd = wnd + 2

  IF xf1c <= 2 THEN fBer1c = 0: LOCATE yf1c, 1: PRINT "    ": fBer1c = 0
 END IF
 IF pkt >= 15000 THEN Ueberleitung12: xr = 0
FOR p = 0 TO (pp! - 1) * 1000: NEXT

LOOP
END SUB

SUB Start2

CLS
SCREEN 0
xr = 25: yr = 12
xf = 73: yf = INT(RND(1) * 17) + 2: wnd = 0
pkt = 0
Sterne
RANDOMIZE TIMER
Anzeige2a
pkt = 500
absh = 0

Start2:

'Tasten
 a$ = INKEY$
 IF a$ = "s" THEN Sterne
 IF a$ = CHR$(27) THEN menu
 IF a$ = CHR$(0) + CHR$(75) THEN xr = xr - 1
 IF a$ = CHR$(0) + CHR$(77) THEN xr = xr + 1
 IF a$ = CHR$(0) + CHR$(72) THEN yr = yr - 1
 IF a$ = CHR$(0) + CHR$(80) THEN yr = yr + 1
Sicherung2
Enterprise2

SterneK = SterneK + 1 / 600
IF SterneK >= 4 THEN SterneK = 0: Sterne

'Schilde
IF xr < xf + 10 AND xr > xf AND yr <= yf + 2 AND yr >= yf THEN COLOR 14: LOCATE yr - 1, xr - 6: PRINT "\∞∞/": LOCATE yr, xr - 6: PRINT "/∞∞\": wnd = 10: sld = sld - 1: pkt = pkt - 1000: IF absh >= 0 THEN absh = absh - 1

Romulaner
Anzeige2b

IF a$ = CHR$(32) AND fBer2a = 0 THEN fBer2a = 1
IF a$ = "h" AND fBer2b = 0 THEN fBer2b = 1
IF a$ = "g" AND fBer2c = 0 THEN fBer2c = 1

'Fire2a
 IF fBer2a >= 1 THEN
  fBer2a = fBer2a + 1
 IF fBer2a = 2 THEN xf2a = xr - 3: yf2a = yr
  xf2a = xf2a + 2 / 10
  COLOR 11
  LOCATE yf2a, xf2a: PRINT " -*)"
  COLOR 14
  LOCATE yf2a, xf2a: PRINT " -:)"
  COLOR 9
  LOCATE yf2a, xf2a: PRINT " -+}"

'Trefferbedingung1'
  IF xf2a < xf + 2 AND xf2a > xf AND yf2a <= yf + 1 AND yf2a >= yf THEN COLOR 14: LOCATE yf2a, xf2a: PRINT "(€<": fBer2a = 0: wnd = wnd + 5: pkt = pkt + 50
  IF xf2a > 75 THEN LOCATE yf2a, 75: PRINT "     ": fBer2a = 0: pkt = pkt - 50
 END IF

'Fire2b
 IF fBer2b >= 1 THEN
  fBer2b = fBer2b + 1
 IF fBer2b = 2 THEN xf2b = xr + 1: yf2b = yr - 1
  xf2b = xf2b + 2
  COLOR 15
  LOCATE yf2b, xf2b: PRINT "  * *"
  COLOR 14
  LOCATE yf2b, xf2b: PRINT "  + +"
  COLOR 12
  LOCATE yf2b, xf2b: PRINT "  - -"

'Trefferbedingung2'
  IF xf2b < xf + 2 AND xf2b > xf AND yf2b <= yf + 1 AND yf2b >= yf THEN COLOR 14: LOCATE yf2b, xf2b: PRINT "(€<": fBer2b = 0: wnd = wnd + 1: pkt = pkt + 50
  IF xf2b > 74 THEN LOCATE yf2b, 76: PRINT "     ": fBer2b = 0: pkt = pkt - 50
 END IF

'Fire2c
 IF fBer2c >= 1 THEN
  fBer2c = fBer2c + 1
  IF fBer2c = 2 THEN xf2c = xr - 7: yf2c = yr
  xf2c = xf2c - 2
  COLOR 11
  LOCATE yf2c, xf2c: PRINT "(+  "
  COLOR 14
  LOCATE yf2c, xf2c: PRINT "{:-  "
  COLOR 12
  LOCATE yf2c, xf2c: PRINT "(+-  "

'Trefferbedingung3
  IF xf2c < xf + 2 AND xf2c > xf AND yf2c <= yf + 1 AND yf2c >= yf THEN COLOR 14: LOCATE yf2c, xf2c: PRINT ">€)": fBer2c = 0: wnd = wnd + 2: pkt = pkt + 50
  IF xf2c < 3 THEN LOCATE yf2c, 1: PRINT "    ": fBer2c = 0: pkt = pkt - 50
 END IF
 IF pkt >= 15000 THEN Ueberleitung23: xr = 0
 FOR p = 0 TO (pp! - 1) * 1000: NEXT
GOTO Start2

END SUB

SUB Start2Spieler

CLS
SCREEN 0
pkt1 = 0: pkt2 = 0
xr1 = 20: yr1 = 12
xr2 = 60: yr2 = 12
Sterne
RANDOMIZE TIMER
Anzeige21a

absh1 = 0
absh2 = 0

Start21:

'Tasten
 a$ = INKEY$
'IF a$ = "s" THEN Sterne
 IF a$ = CHR$(27) THEN menu

 IF a$ = CHR$(0) + CHR$(75) THEN xr2 = xr2 - 1
 IF a$ = CHR$(0) + CHR$(77) THEN xr2 = xr2 + 1
 IF a$ = CHR$(0) + CHR$(72) THEN yr2 = yr2 - 1
 IF a$ = CHR$(0) + CHR$(80) THEN yr2 = yr2 + 1

 IF a$ = "a" THEN xr1 = xr1 - 1
 IF a$ = "d" THEN xr1 = xr1 + 1
 IF a$ = "w" THEN yr1 = yr1 - 1
 IF a$ = "s" THEN yr1 = yr1 + 1
Sicherung21

Spieler1
Spieler2

SterneK = SterneK + 1 / 700
IF SterneK >= 7 THEN SterneK = 0: Sterne

Crash
Anzeige21b
Explosion

IF a$ = "0" THEN fBer22a = 1
IF a$ = "+" THEN fBer22b = 1
IF a$ = CHR$(13) THEN fBer22c = 1

IF a$ = " " THEN fBer21a = 1
IF a$ = "h" THEN fBer21b = 1
IF a$ = "g" THEN fBer21c = 1

'Fire21a
 IF fBer21a = 1 THEN
  fBer2a1 = fBer2a1 + 1
  IF fBer2a1 = 1 THEN xf21a = xr1 - 3: yf21a = yr1
  xf21a = xf21a + 2 / 12
  COLOR 14
  LOCATE yf21a, xf21a: PRINT " -*)"
  COLOR 10
  LOCATE yf21a, xf21a: PRINT " -:)"
  COLOR 12
  LOCATE yf21a, xf21a: PRINT " -+}"

'Trefferbedingung1'
  IF xf21a < xr2 + 2 AND xf21a > xr2 AND yf21a <= yr2 AND yf21a >= yr2 - 1 THEN COLOR 10: LOCATE yf21a, xf21a: PRINT "(€<": fBer21a = 0: fBer2a1 = 0: sld2 = sld2 - 5: pkt1 = pkt1 + 500
 
  IF xf21a > 75 THEN fBer21a = 0: LOCATE yf21a, 75: PRINT "     ": fBer2a1 = 0: pkt1 = pkt1 - 100
 END IF

'Fire1b
 IF fBer21b = 1 THEN
  fBer2a2 = fBer2a2 + 1
  IF fBer2a2 = 1 THEN xf21b = xr1 - 4: yf21b = yr1 - 1
  xf21b = xf21b + 1

  COLOR 5
  LOCATE yf21b, xf21b: PRINT " -+*"
  COLOR 14
  LOCATE yf21b, xf21b: PRINT " -+0"
  COLOR 12
  LOCATE yf21b, xf21b: PRINT " --+"

'Trefferbedingung2'
  IF xf21b < xr2 + 2 AND xf21b > xr2 AND yf21b <= yr2 AND yf21b >= yr2 - 1 THEN COLOR 10: LOCATE yf21b, xf21b: PRINT "(€<": fBer21b = 0: fBer2a2 = 0: sld2 = sld2 - 1: pkt1 = pkt1 + 500

  IF xf21b > 75 THEN fBer21b = 0: LOCATE yf21b, 75: PRINT "     ": fBer2a2 = 0: pkt1 = pkt1 - 100
 END IF

'Fire21c
 IF fBer21c = 1 THEN
  fBer2a3 = fBer2a3 + 1
  IF fBer2a3 = 1 THEN xf21c = xr1 - 7: yf21c = yr1
  xf21c = xf21c - 1
  COLOR 13
  LOCATE yf21c, xf21c: PRINT "(+ "
  COLOR 14
  LOCATE yf21c, xf21c: PRINT "{+- "
  COLOR 12
  LOCATE yf21c, xf21c: PRINT "((+ "

'Trefferbedingung3
  IF xf21c < xr2 + 2 AND xf21c > xr2 AND yf21c <= yr2 AND yf21c >= yr2 - 1 THEN COLOR 10: LOCATE yf21c, xf21c: PRINT ">€)": fBer21c = 0: fBer2a3 = 0: sld2 = sld2 - 2: pkt1 = pkt1 + 500

  IF xf21c <= 2 THEN fBer21c = 0: LOCATE yf21c, 1: PRINT "    ": fBer2a3 = 0: pkt1 = pkt1 - 100
 END IF


'Fire22a
 IF fBer22a = 1 THEN
  fBer2b1 = fBer2b1 + 1
  IF fBer2b1 = 1 THEN xf22a = xr2: yf22a = yr2
  xf22a = xf22a - 2 / 12
  COLOR 14
  LOCATE yf22a, xf22a: PRINT "(*- "
  COLOR 10
  LOCATE yf22a, xf22a: PRINT "(:- "
  COLOR 12
  LOCATE yf22a, xf22a: PRINT "{+- "

'Trefferbedingung1'
  IF xf22a < xr1 - 2 AND xf22a > xr1 - 5 AND yf22a <= yr1 AND yf22a >= yr1 - 1 THEN COLOR 10: LOCATE yf22a, xf22a: PRINT ">€)": fBer22a = 0: fBer2b1 = 0: sld1 = sld1 - 5: pkt2 = pkt2 + 500
 
  IF xf22a < 2 THEN fBer22a = 0: LOCATE yf22a, 1: PRINT "     ": fBer2b1 = 0: pkt2 = pkt2 - 100
 END IF

'Fire22b
 IF fBer22b = 1 THEN
  fBer2b2 = fBer2b2 + 1
  IF fBer2b2 = 1 THEN xf22b = xr2 - 2: yf22b = yr2 - 1
  xf22b = xf22b - 1

  COLOR 5
  LOCATE yf22b, xf22b: PRINT "*+- "
  COLOR 14
  LOCATE yf22b, xf22b: PRINT "0+- "
  COLOR 12
  LOCATE yf22b, xf22b: PRINT "+-- "

'Trefferbedingung2'
  IF xf22b < xr1 - 2 AND xf22b > xr1 - 5 AND yf22b <= yr1 AND yf22b >= yr1 - 1 THEN COLOR 10: LOCATE yf22b, xf22b: PRINT ">€)": fBer22b = 0: fBer2b2 = 0: sld1 = sld1 - 1: pkt2 = pkt2 + 500

  IF xf22b < 2 THEN fBer22b = 0: LOCATE yf22b, 1: PRINT "     ": fBer2b2 = 0: pkt2 = pkt2 - 100
 END IF

'Fire1c
 IF fBer22c = 1 THEN
  fBer2b3 = fBer2b3 + 1
  IF fBer2b3 = 1 THEN xf22c = xr2 + 5: yf22c = yr2
  xf22c = xf22c + 1
  COLOR 13
  LOCATE yf22c, xf22c: PRINT " -+)"
  COLOR 14
  LOCATE yf22c, xf22c: PRINT " -+}"
  COLOR 12
  LOCATE yf22c, xf22c: PRINT " +))"

'Trefferbedingung3
  IF xf22c < xr1 - 2 AND xf22c > xr1 - 5 AND yf22c <= yr1 AND yf22c >= yr1 - 1 THEN COLOR 10: LOCATE yf22c, xf22c: PRINT "(€<": fBer22c = 0: fBer2b3 = 0: sld1 = sld1 - 2: pkt2 = pkt2 + 500
 
  IF xf22c > 76 THEN fBer22c = 0: LOCATE yf22c, 77: PRINT "    ": fBer2b3 = 0: pkt2 = pkt2 - 100
 END IF

FOR p = 0 TO (pp! - 1) * 1000: NEXT
GOTO Start21

END SUB

SUB Start3

CLS
SCREEN 0
xr = 25: yr = 12
xf = 73: yf = INT(RND(1) * 17) + 2: wnd = 0
pkt = 0
shuttle = 0: shx = 0: shy = 0
Sterne
RANDOMIZE TIMER
Anzeige3a
pkt = 500
absh = 0

Start3:

'Tasten
 a$ = INKEY$
 IF a$ = "s" THEN Sterne
 IF a$ = CHR$(27) THEN menu
 IF a$ = CHR$(0) + CHR$(75) THEN xr = xr - 1
 IF a$ = CHR$(0) + CHR$(77) THEN xr = xr + 1
 IF a$ = CHR$(0) + CHR$(72) THEN yr = yr - 1
 IF a$ = CHR$(0) + CHR$(80) THEN yr = yr + 1
Sicherung3
Defiant

SterneK = SterneK + 1 / 600
IF SterneK >= 4 THEN SterneK = 0: Sterne

'Schilde
IF xr < xf + 13 AND xr > xf AND yr = INT(yf) THEN COLOR 14: LOCATE yr, xr - 6: PRINT "/∞∞\": wnd = 10: sld = sld - 1: pkt = pkt - 1000: IF absh >= 0 THEN absh = absh - 1

DS9
Dominion
Anzeige3b

IF a$ = CHR$(32) AND fber3a = 0 THEN fber3a = 1
IF a$ = "h" AND fber3b = 0 THEN fber3b = 1
IF a$ = "g" AND fber3c = 0 THEN fber3c = 1

'Fire3a
 IF fber3a >= 1 THEN
  fber3a = fber3a + 1
 IF fber3a = 2 THEN xf3a = xr: yf3a = yr
  xf3a = xf3a + 2 / 10
  COLOR 9
  LOCATE yf3a, xf3a: PRINT " -*)"
  COLOR 10
  LOCATE yf3a, xf3a: PRINT " -:)"
  COLOR 11
  LOCATE yf3a, xf3a: PRINT " -+}"

'Trefferbedingung1'
  IF xf3a < xf + 6 AND xf3a > xf AND yf3a = INT(yf) THEN COLOR 14: LOCATE yf3a, xf3a: PRINT "(€<": fber3a = 0: wnd = wnd + 5: pkt = pkt + 50
 
  IF xf3a > 75 THEN LOCATE yf3a, 75: PRINT "     ": fber3a = 0: pkt = pkt - 50
 END IF

'Fire3b
 IF fber3b >= 1 THEN
  fber3b = fber3b + 1
 IF fber3b = 2 THEN xf3b = xr + 1: yf3b = yr
  xf3b = xf3b + 2
  COLOR 12
  LOCATE yf3b, xf3b: PRINT "  * *"
  COLOR 10
  LOCATE yf3b, xf3b: PRINT "  + +"
  COLOR 14
  LOCATE yf3b, xf3b: PRINT "  - -"

'Trefferbedingung3'
  IF xf3b < xf + 6 AND xf3b > xf AND yf3b = INT(yf) THEN COLOR 14: LOCATE yf3b, xf3b: PRINT "(€<": fber3b = 0: wnd = wnd + 1: pkt = pkt + 50
 
  IF xf3b > 74 THEN LOCATE yf3b, 76: PRINT "     ": fber3b = 0: pkt = pkt - 50
 END IF

'Fire3c
 IF fber3c >= 1 THEN
  fber3c = fber3c + 1
  IF fber3c = 2 THEN xf3c = xr - 5: yf3c = yr
  xf3c = xf3c - 2
  COLOR 14
  LOCATE yf3c, xf3c: PRINT "(+  "
  COLOR 14
  LOCATE yf3c, xf3c: PRINT "{:-  "
  COLOR 12
  LOCATE yf3c, xf3c: PRINT "(+-  "

'Trefferbedingung3
  IF xf3c < xf + 6 AND xf3c > xf AND yf3c = INT(yf) THEN COLOR 14: LOCATE yf3c, xf3c: PRINT ">€)": fber3c = 0: wnd = wnd + 2: pkt = pkt + 50
  IF xf3c < 3 THEN LOCATE yf3c, 1: PRINT "    ": fber3c = 0: pkt = pkt - 50
 END IF

'Trefferbedingung Defiant -> Shuttle
IF INT(yf3a) >= INT(shy) AND INT(yf3a) <= INT(shy) + 1 AND INT(xf3a) <= INT(shx) + 4 AND INT(xf3a) >= INT(shx) THEN shex = 1: fber3a = 0
IF INT(yf3b) >= INT(shy) AND INT(yf3b) <= INT(shy) + 1 AND INT(xf3b) <= INT(shx) + 4 AND INT(xf3b) >= INT(shx) THEN shex = 1: fber3b = 0
IF INT(yf3c) >= INT(shy) AND INT(yf3c) <= INT(shy) + 1 AND INT(xf3c) <= INT(shx) + 4 AND INT(xf3c) >= INT(shx) THEN shex = 1: fber3c = 0

IF pkt >= 15000 THEN Ueberleitung34: xr = 0
FOR p = 0 TO (pp! - 1) * 1000: NEXT
GOTO Start3
END SUB

SUB Start4
CLS
SCREEN 0
xr = 25: yr = 12
yf = 11: xf = 65
pkt = 0
b0 = 8: b1 = 8: b2 = 8: b3 = 8: b4 = 8: b5 = 8
fBer4fa = 0: fBer4fb = 0: fBer4fc = 0
FireBorga = 0: FireBorgb = 0: FireBorgc = 0
Sterne
RANDOMIZE TIMER
Anzeige4a
Start4:
IF p4 = 1 THEN SLEEP: p4 = p4 + 1
'Tasten
 a$ = INKEY$
 IF a$ = "s" THEN Sterne
 IF a$ = CHR$(27) THEN menu
 IF a$ = CHR$(0) + CHR$(75) THEN xr = xr - 1
 IF a$ = CHR$(0) + CHR$(77) THEN xr = xr + 1
 IF a$ = CHR$(0) + CHR$(72) THEN yr = yr - 1
 IF a$ = CHR$(0) + CHR$(80) THEN yr = yr + 1
Sicherung4
Voyager

SterneK = SterneK + 1 / 300
IF SterneK >= 4 THEN SterneK = 0: Sterne

'Schilde
IF xr + 6 > xf AND yr <= yf + 6 AND yr >= yf THEN COLOR 10: LOCATE yr - 1, xr - 6: PRINT "\∞∞/": LOCATE yr, xr - 6: PRINT "/∞∞\": sld = sld - 1: xr = xr - 2

Borg
Anzeige4b

IF INT(b0) <= 0 AND INT(b1) <= 0 AND INT(b2) <= 0 AND INT(b3) <= 0 AND INT(b4) <= 0 AND INT(b5) <= 0 THEN Happyend
IF sld < 0 THEN : loose4

IF a$ = CHR$(32) AND fBer4a = 0 THEN fBer4a = 1
IF a$ = "h" AND fBer4b = 0 THEN fBer4b = 1
IF a$ = "g" AND fBer4c = 0 THEN fBer4c = 1

'Fire4a
 IF fBer4a >= 1 THEN
  fBer4a = fBer4a + 1
 IF fBer4a = 2 THEN xfa = xr - 3: yfa = yr
  xfa = xfa + .7
  COLOR 14
  LOCATE yfa, xfa: PRINT " -*)"
  COLOR 10
  LOCATE yfa, xfa: PRINT " -:)"
  COLOR 12
  LOCATE yfa, xfa: PRINT " -+}"

'Trefferbedingung1'
  IF xfa < xf + 10 AND xfa > xf AND yfa = yf THEN b0 = b0 - 5:         GOTO f4fa
  IF xfa < xf + 10 AND xfa > xf AND yfa = yf + 1 THEN b1 = b1 - 5:     GOTO f4fa
  IF xfa < xf + 10 AND xfa > xf AND yfa = yf + 2 THEN b2 = b2 - 5:     GOTO f4fa
  IF xfa < xf + 10 AND xfa > xf + 4 AND yfa = yf + 3 THEN b3 = b3 - 5: GOTO f4fa
  IF xfa < xf + 10 AND xfa > xf AND yfa = yf + 4 THEN b4 = b4 - 5:     GOTO f4fa
  IF xfa < xf + 10 AND xfa > xf AND yfa = yf + 5 THEN b5 = b5 - 5:     GOTO f4fa
GOTO Uf4fa
f4fa:
   COLOR 10: LOCATE yfa, xfa: PRINT ">€)": fBer4a = 0
Uf4fa:
  IF xfa > 75 THEN LOCATE yfa, 75: PRINT "     ": fBer4a = 0
 END IF

'Fire4b
 IF fBer4b >= 1 THEN
  fBer4b = fBer4b + 1
 IF fBer4b = 2 THEN xfb = xr: yfb = yr - 1
  xfb = xfb + 3

  COLOR 10
  LOCATE yfb, xfb:        PRINT "-o*"
  COLOR 14
  LOCATE yfb, xfb:        PRINT "*-*"
  COLOR INT(RND * 6 + 1) * 2
  LOCATE yfb, xfb - 3: PRINT "   -+*"

'Trefferbedingung2
  IF xfb < xf + 10 AND xfb > xf AND yfb = yf THEN b0 = b0 - 1:         GOTO f4fb
  IF xfb < xf + 10 AND xfb > xf AND yfb = yf + 1 THEN b1 = b1 - 1:     GOTO f4fb
  IF xfb < xf + 10 AND xfb > xf AND yfb = yf + 2 THEN b2 = b2 - 1:     GOTO f4fb
  IF xfb < xf + 10 AND xfb > xf + 4 AND yfb = yf + 3 THEN b3 = b3 - 1: GOTO f4fb
  IF xfb < xf + 10 AND xfb > xf AND yfb = yf + 4 THEN b4 = b4 - 1:     GOTO f4fb
  IF xfb < xf + 10 AND xfb > xf AND yfb = yf + 5 THEN b5 = b5 - 1:     GOTO f4fb
GOTO Uf4fb
f4fb:
   COLOR 10: LOCATE yfb, xfb: PRINT ">€)": fBer4b = 0
Uf4fb:
  IF xfb > 75 THEN LOCATE yfb, 75: PRINT "      ": fBer4b = 0
 END IF

'Fire4c
 IF fBer4c >= 1 THEN
  fBer4c = fBer4c + 1
 IF fBer4c = 2 THEN xfc = xr: yfc = yr
  xfc = xfc + 1.3
  COLOR 10
  LOCATE yfc, xfc: PRINT " )+>"
  COLOR 11
  LOCATE yfc, xfc: PRINT " -)>"
  COLOR 9
  LOCATE yfc, xfc: PRINT "  +)"
                           
'Trefferbedingung3
  IF xfc < xf + 10 AND xfc > xf AND yfc = yf THEN b0 = b0 - 2:         GOTO f4fc
  IF xfc < xf + 10 AND xfc > xf AND yfc = yf + 1 THEN b1 = b1 - 2:     GOTO f4fc
  IF xfc < xf + 10 AND xfc > xf AND yfc = yf + 2 THEN b2 = b2 - 2:     GOTO f4fc
  IF xfc < xf + 10 AND xfc > xf + 4 AND yfc = yf + 3 THEN b3 = b3 - 2: GOTO f4fc
  IF xfc < xf + 10 AND xfc > xf AND yfc = yf + 4 THEN b4 = b4 - 2:     GOTO f4fc
  IF xfc < xf + 10 AND xfc > xf AND yfc = yf + 5 THEN b5 = b5 - 2:     GOTO f4fc
GOTO Uf4fc
f4fc:
   COLOR 10: LOCATE yfc, xfc: PRINT ">€)": fBer4c = 0
Uf4fc:
   IF xfc >= 76 THEN LOCATE yfc, 76: PRINT "     ": fBer4c = 0
 END IF

FOR p = 0 TO (pp! - 1) * 1000: NEXT
GOTO Start4

END SUB

SUB Sterne

RANDOMIZE TIMER
FOR q = 1 TO 5

 COLOR 15
 FOR p = 1 TO 5
 y4 = INT(RND * 19) + 1
 x4 = INT(RND * 79) + 1
 LOCATE y4, x4: PRINT "."
 NEXT p

 COLOR 15
 FOR p = 1 TO 5
 y4 = INT(RND * 19) + 1
 x4 = INT(RND * 79) + 1
 LOCATE y4, x4: PRINT "˘"
 NEXT p

 COLOR 15
 FOR p = 1 TO 5
 y4 = INT(RND * 19) + 1
 x4 = INT(RND * 79) + 1
 LOCATE y4, x4: PRINT "˙"
 NEXT p


 COLOR 7
 FOR p = 1 TO 2
 y4 = INT(RND * 19) + 1
 x4 = INT(RND * 79) + 1
 LOCATE y4, x4: PRINT "˘"
 NEXT p


 COLOR 8
 FOR p = 1 TO 2
 y4 = INT(RND * 19) + 1
 x4 = INT(RND * 79) + 1
 LOCATE y4, x4: PRINT "˘"
 NEXT p

 NEXT q
END SUB

SUB Ueberleitung12
CLS
SCREEN 12
COLOR 14
LOCATE 3, 20: PRINT "Es ist vollbracht!"
PRINT : COLOR 3
PRINT "  Du hast den Kampf gewonnen, doch mit den Klingonen existiert jetzt ein"
PRINT "   Friedensvertrag (so'n Mist!)."
PRINT "  Auf der Suche nach neuen Feinden sto·en Picard und seine Crew auf die"
PRINT "   Romulaner."
PRINT "  Die haben doch allen Ernstes Artefakte (Åber 10000 Jahre alte Tonscherben"
PRINT "   irgendwelcher verschollenen Zivilisationen) gestohlen, die noch in"
PRINT "   Pikard's Sammlung fehlen!"
PRINT "  Woher nehmen sie sich die moralische Berechtigung, solch eine provokannte"
PRINT "   Tat zu vollbringen?"
PRINT "  Das fordert natÅrlich GNADENLOSE RACHE !!!"
PRINT "  Wie ein Besengter stÅrzt der Captain die Enterprei· in eine wilde Schlacht"
PRINT "   mit den Romulanern."
PRINT "  WÑhrend Pikard gemÅtlich auf seinem Stuhl sitzt, musst du die romulanischen"
PRINT "   Schiffe abschie·en!"
PRINT : COLOR 10
PRINT "  Das Cotwort fÅr das nÑchste Lewel hei·t "; CHR$(34); "tng"; CHR$(34); "."
COLOR 7: LOCATE 26, 26: PRINT "< ESC - weiter >"
logo
SLEEP
DO: LOOP UNTIL INKEY$ = CHR$(27)
Start2
END SUB

SUB Ueberleitung23
SCREEN 12: CLS
COLOR 14: LOCATE 5, 30
PRINT "Gewonnen"
PRINT : COLOR 11
PRINT "  Nachdem du Pikard geholfen hast, seine Sammlung an altem Krams zu erweitern,"
PRINT "   gibt es auf Deep Space Nine Probleme:"
PRINT "  Sisco hat in Quark's Bar aus Versehen einen Formwandler-Spion des Dominion"
PRINT "   ausgetrunken, der sich als Tee getarnt hat."
PRINT "  Logischerweise ist das SchleimstÅck nicht sehr begeistert darÅber, Sisco's"
PRINT "   Darm durchlaufen zu haben und bewegt seine Regierung dazu, einen Krieg zu"
PRINT "   fÅhren."
PRINT
PRINT "  Das bringt wieder Arbeit fÅr dich. Dein sinnvoller Auftrag lautet, auf"
PRINT "   alle Dominion-Schiffe zu ballern, die durch das Wurmloch kommen."
PRINT "  (aber nicht die kleinen Shuttles zerschiessen)"
PRINT : PRINT : COLOR 10
PRINT "  Der Code fÅr dieses Level hei·t "; CHR$(34); "ds9"; CHR$(34); "."
COLOR 7: LOCATE 26, 26: PRINT "< ESC - weiter >"
logo
DO: LOOP UNTIL INKEY$ = CHR$(27)
Start3
END SUB

SUB Ueberleitung34
SCREEN 12: CLS
COLOR 14: LOCATE 5, 20
PRINT "Schon wieder geschafft!"
PRINT : COLOR 11
PRINT "  Dank deiner strategischen öberlegenheit gibt es im Gebiet der Fîderation"
PRINT "   kaum noch Feinde, mit denen es sich lohnt, zu kÑmpfen."
PRINT "  Aber es gibt ja noch den Deltaquadranten!"
PRINT "  Dort hat die mutige Janeway mit einem Haufen Borgs Ñrger."
PRINT
PRINT "  Eigentlich mÅ·te sie ja bekanntlich alleine damit fertig werden, doch"
PRINT "   der Doktor hat ihr befohlen, sich endlich mal auszuruhen."
PRINT "   (Auch im Weltraum muss der Tagesrythmus eingehalten werden!)"
PRINT
PRINT "  Da du gerade Nachtschicht auf der BrÅcke hast, musst du schon wieder ran,"
PRINT "   und die Voyager vor dieser gro·en Bedrohung schÅtzen."
PRINT : PRINT : COLOR 10
PRINT "  Das Codewort fÅr dieses Level hei·t "; CHR$(34); "voy"; CHR$(34); ". (wie einfallsreich!)"
logo
COLOR 7: LOCATE 26, 26: PRINT "< ESC - weiter >": SLEEP
DO: LOOP UNTIL INKEY$ = CHR$(27)
Start4
END SUB

SUB Vorspann
CLS
SCREEN 12
LOCATE 13, 20: PRINT "Das Programm mu· noch geladen werden !"
SLEEP 1
CLS
COLOR 14: LOCATE 13, 28: PRINT "Bitte warten..."
SOUND 50, 1: SOUND 90, 1: SOUND 60, 1
SLEEP 1

FOR p% = 0 TO 100
'PLAY "P50 l64 n45"
COLOR 7
LOCATE 16, 29
IF p% < 10 THEN PRINT " ";
PRINT RTRIM$(STR$(p%)); : PRINT "% fertig"
IF p% = 100 THEN LOCATE 16, 28: PRINT p%: LOCATE 16, 32: PRINT "%  FERTIG"
COLOR 12: LOCATE 15, 30: PRINT "Laden ";

SELECT CASE (p% * 16 / 100)
CASE IS <= 1
    PRINT "∞"
CASE IS <= 2
    PRINT "±"
CASE IS <= 3
    PRINT "≤"
CASE IS <= 4
    PRINT "€"
CASE IS <= 5
    PRINT "€∞"
CASE IS <= 6
    PRINT "€±"
CASE IS <= 7
    PRINT "€≤"
CASE IS <= 8
    PRINT "€€"
CASE IS <= 9
    PRINT "€€∞"
CASE IS <= 10
    PRINT "€€±"
CASE IS <= 11
    PRINT "€€≤"
CASE IS <= 12
    PRINT "€€€"
CASE IS <= 13
    PRINT "€€€∞"
CASE IS <= 14
    PRINT "€€€±"
CASE IS <= 15
    PRINT "€€€≤"
CASE IS <= 16
    PRINT "€€€€"
END SELECT

NEXT p%
 
COLOR 2:  LOCATE 15, 30: PRINT "Laden €€€€"
COLOR 10: LOCATE 16, 29: PRINT "100%  FERTIG"
PLAY "P50 l30n55"
SLEEP 2

CLS
SCREEN 12
RANDOMIZE TIMER

' Sterne
FOR p = 1 TO 300
    y = INT(RND * 462) + 1
    x = INT(RND * 638) + 1
    PSET (x, y), 15
NEXT
FOR p = 0 TO 150
    y = INT(RND * 462) + 1
    x = INT(RND * 638) + 1
    r = INT(RND * 2)
    FOR q = 0 TO r
        CIRCLE (x, y), q, 15
    NEXT
NEXT
  
PSET (300, 160)
PLAY "p64 l64n30"
DRAW "s2 c9"
PLAY "p64 l64n30"
DRAW "l6"
PLAY "p64 l64n30"
DRAW "m-6,2"
PLAY "p64 l64n30"
DRAW "m-6,4"
PLAY "p64 l64n30"
DRAW "m-4,6"
PLAY "p64 l64n30"
DRAW "u-4"
PLAY "p64 l64n30"
DRAW "f2"
PLAY "p64 l64n30"
DRAW "r2"
PLAY "p64 l64n30"
DRAW "m+4,-2"
PLAY "p64 l64n30"
DRAW "m+2,-4"
PLAY "p64 l64n30"
DRAW "u-8"
PLAY "p64 l64n30"
DRAW "m-2,6"
PLAY "p64 l64n30"
DRAW "m-4,6"
PLAY "p64 l64n30"
DRAW "m-2,6"
PLAY "p64 l64n30"
DRAW "u-4"
PLAY "p64 l64n30"
DRAW "f4"
PLAY "p64 l64n30"
DRAW "r4"
PLAY "p64 l64n30"
DRAW "m+6,-2"
PLAY "p64 l64n30"
DRAW "m+2,-4"
PLAY "p64 l64n30"
DRAW "m-2,-6"
PLAY "p64 l64n30"
DRAW "u6"
PLAY "p64 l64n30"
DRAW "m+2,-6"
PLAY "p64 l64n30"
DRAW "m+4,2"
PLAY "p64 l64n30"
DRAW "r4"
PLAY "p64 l64n30"
DRAW "m+6,-2"
PLAY "p64 l64n30"
DRAW "e4"
PLAY "p64 l64n30"
DRAW "u6"
PLAY "p64 l64n30"
DRAW "m-2,-6"
PLAY "p64 l64n30"
DRAW "h2"
PLAY "p64 l64n30"
DRAW "m-4,-2"
PLAY "p64 l64n30"
DRAW "m-6,-2"
PLAY "p64 l64n30"
DRAW "bm-0,6"
PLAY "p64 l64n30"

DRAW "c9"
PLAY "p64 l64n30"
DRAW "r-4"
PLAY "p64 l64n30"
DRAW "g2"
PLAY "p64 l64n30"
DRAW "g0"
PLAY "p64 l64n30"
DRAW "u-4"
PLAY "p64 l64n30"
DRAW "m+2,4"
PLAY "p64 l64n30"
DRAW "m+4,2"
PLAY "p64 l64n30"
DRAW "r2"
PLAY "p64 l64n30"
DRAW "e4"
PLAY "p64 l64n30"
DRAW "u4"
PLAY "p64 l64n30"
DRAW "h2"
PLAY "p64 l64n30"
DRAW "m-4,-2"

PLAY "p64 l64n30"
PAINT STEP(0, -2), 1, 9
PSET STEP(-3, 10), 1

FOR pi! = 6.28318 TO 0 STEP -.05
    CIRCLE STEP(0, 0), 16, 9, pi!
    CIRCLE STEP(0, 0), 20, 9, 6.28318, 6.28318 - pi!
    PLAY "p64 l64n20"
NEXT

 PAINT STEP(18, 0), 1, 9
PLAY "o2 l32"
COLOR 8:  LOCATE 15, 21: PRINT "S T R A T Y - P R O D U C T I O N S"
PLAY "c"
PLAY "d"
FOR p = 1 TO pp! * 5000: NEXT
COLOR 1:  LOCATE 15, 21: PRINT "S T R A T Y - P R O D U C T I O N S"
PLAY "e"
PLAY "f"
FOR p = 1 TO pp! * 5000: NEXT p
COLOR 9:  LOCATE 15, 21: PRINT "S T R A T Y - P R O D U C T I O N S"
PLAY "g"
PLAY "b"
FOR p = 1 TO pp! * 5000: NEXT p
COLOR 11: LOCATE 15, 21: PRINT "S T R A T Y - P R O D U C T I O N S"
PLAY ">c d"
SLEEP 1
FOR p = 1 TO pp! * 3400
q = p / 130
SELECT CASE q
CASE IS < 1
COLOR 14: LOCATE 17, 30: PRINT "-"
CASE IS < 2
          LOCATE 17, 30: PRINT "+"
CASE IS < 3
COLOR 9:  LOCATE 17, 30: PRINT "p *"
CASE IS < 4
COLOR 14: LOCATE 17, 34: PRINT "-"
CASE IS < 5
          LOCATE 17, 34: PRINT "+"
CASE IS < 6
COLOR 9:  LOCATE 17, 32: PRINT "r *"
CASE IS < 7
COLOR 14: LOCATE 17, 36: PRINT "-"
CASE IS < 8
          LOCATE 17, 36: PRINT "+"
CASE IS < 9
COLOR 9:  LOCATE 17, 34: PRINT "e *"
CASE IS < 10
COLOR 14: LOCATE 17, 38: PRINT "-"
CASE IS < 12
          LOCATE 17, 38: PRINT "+"
CASE IS < 13
COLOR 9:  LOCATE 17, 36: PRINT "s *"
CASE IS < 14
COLOR 14: LOCATE 17, 40: PRINT "-"
CASE IS < 15
          LOCATE 17, 40: PRINT "+"
CASE IS < 16
COLOR 9:  LOCATE 17, 38: PRINT "e *"
CASE IS < 17
COLOR 14: LOCATE 17, 42: PRINT "-"
CASE IS < 18
          LOCATE 17, 42: PRINT "+"
CASE IS < 19
COLOR 9:  LOCATE 17, 40: PRINT "n *"
CASE IS < 20
          LOCATE 17, 44: PRINT "-"
CASE IS < 21
COLOR 14: LOCATE 17, 44: PRINT "+"
CASE IS < 22
COLOR 9:  LOCATE 17, 42: PRINT "t *"
CASE IS < 23
          LOCATE 17, 44: PRINT "s"
END SELECT
NEXT p
FOR p = 1 TO pp! * 500 STEP 2
CIRCLE (320, 225), p, 10
NEXT p
FOR p = 1 TO pp! * 500 STEP 1
CIRCLE (320, 225), p, 0
NEXT p
CLS
SLEEP 1

SCREEN 13
CLS
FOR o = 0 TO pp! * 200
q = RND * 319
p = RND * 199
PSET (q, p)
NEXT o
FOR p = 1 TO pp! * 5000: NEXT p
FOR p = 1 TO pp! * 32 STEP .04
COLOR 6
SELECT CASE p
CASE IS < 1
 LOCATE 12, 21: PRINT "-"
CASE IS < 2
 LOCATE 12, 20: PRINT "+-+"
CASE IS < 3
 LOCATE 12, 20: PRINT "*-*"
CASE IS < 4
 LOCATE 12, 20: PRINT "E-A"
CASE IS < 5
 LOCATE 12, 19: PRINT "-E-A-"
CASE IS < 6
 LOCATE 12, 19: PRINT "+E-A+"
CASE IS < 7
 LOCATE 12, 19: PRINT "*E-A*"
CASE IS < 8
 LOCATE 12, 19: PRINT "SE-AD"
CASE IS < 9
 LOCATE 12, 18: PRINT "-SE-AD-"
CASE IS < 10
 LOCATE 12, 18: PRINT "+SE-AD+"
CASE IS < 11
 LOCATE 12, 18: PRINT "*SE-AD*"
CASE IS < 12
 LOCATE 12, 18: PRINT "RSE-ADV"
CASE IS < 13
 LOCATE 12, 17: PRINT "-RSE-ADV-"
CASE IS < 14
 LOCATE 12, 17: PRINT "+RSE-ADV+"
CASE IS < 15
 LOCATE 12, 17: PRINT "*RSE-ADV*"
CASE IS < 16
 LOCATE 12, 17: PRINT "ERSE-ADVE"
CASE IS < 17
 LOCATE 12, 16: PRINT "-ERSE-ADVE-"
CASE IS < 18
 LOCATE 12, 16: PRINT "+ERSE-ADVE+"
CASE IS < 19
 LOCATE 12, 16: PRINT "*ERSE-ADVE*"
CASE IS < 20
 LOCATE 12, 16: PRINT "VERSE-ADVEN"
CASE IS < 21
 LOCATE 12, 15: PRINT "-VERSE-ADVEN-"
CASE IS < 22
 LOCATE 12, 15: PRINT "+VERSE-ADVEN+"
CASE IS < 23
 LOCATE 12, 15: PRINT "*VERSE-ADVEN*"
CASE IS < 24
 LOCATE 12, 15: PRINT "IVERSE-ADVENT"
CASE IS < 25
 LOCATE 12, 14: PRINT "-IVERSE-ADVENT-"
CASE IS < 26
 LOCATE 12, 14: PRINT "+IVERSE-ADVENT+"
CASE IS < 27
 LOCATE 12, 14: PRINT "*IVERSE-ADVENT*"
CASE IS < 28
 LOCATE 12, 14: PRINT "NIVERSE-ADVENTU"
CASE IS < 29
 LOCATE 12, 13: PRINT "-NIVERSE-ADVENTUR-"
CASE IS < 30
 LOCATE 12, 13: PRINT "+NIVERSE-ADVENTUR+"
CASE IS < 31
 LOCATE 12, 13: PRINT "*NIVERSE-ADVENTUR*"
CASE IS < 32
 LOCATE 12, 13: PRINT "UNIVERSE-ADVENTURE"
END SELECT
NEXT p


pi = 3.14159

FOR e = 0 TO pp! * 1000 STEP 2
 cc = 14
 IF e = 1000 THEN cc = 0
 p = p + .1
 p2 = p - .2

 x2 = COS(p2) * 120 + 160
 y2 = SIN(p2) * 80 + 90
 CIRCLE (x2, y2), 1, 0
 x1 = COS(p) * 120 + 160
 y1 = SIN(p) * 80 + 90
 CIRCLE (x1, y1), 1, cc

 x2 = COS(p2 + pi / 3) * 120 + 160
 y2 = SIN(p2 + pi / 3) * 80 + 90
 CIRCLE (x2, y2), 1, 0
 x1 = COS(p + pi / 3) * 120 + 160
 y1 = SIN(p + pi / 3) * 80 + 90
 CIRCLE (x1, y1), 1, cc

 x2 = COS(p2 + pi) * 100 + 160
 y2 = SIN(p2 + pi) * 20 + 90
 CIRCLE (x2, y2), 1, 0
 x1 = COS(p + pi) * 100 + 160
 y1 = SIN(p + pi) * 20 + 90
 CIRCLE (x1, y1), 1, cc

 x2 = COS(p2 + pi / 2) * 100 + 160
 y2 = SIN(p2 + pi / 2) * 20 + 90
 CIRCLE (x2, y2), 1, 0
 x1 = COS(p + pi / 2) * 100 + 160
 y1 = SIN(p + pi / 2) * 20 + 90
 CIRCLE (x1, y1), 1, cc
NEXT

 LOCATE 12, 13: PRINT "UNIVERSE-ADVENTURE"
FOR p = 1 TO pp! * 3000: NEXT p
 LOCATE 12, 13: PRINT "******** *********"
FOR p = 1 TO pp! * 3000: NEXT p
 LOCATE 12, 13: PRINT "++++++++ +++++++++"
FOR p = 1 TO pp! * 3000: NEXT p
 LOCATE 12, 13: PRINT "-------- ---------"
FOR p = 1 TO pp! * 3000: NEXT p
 LOCATE 12, 13: PRINT "                  "
FOR p = 1 TO pp! * 3000: NEXT p
END SUB

SUB Voyager
 COLOR 7
 LOCATE yr - 2, xr - 6:   PRINT "         "
 LOCATE yr - 1, xr - 6: PRINT "    _____  "
 LOCATE yr, xr - 2:         PRINT "": COLOR 12: LOCATE yr, xr - 4: PRINT "Ø": COLOR 9: LOCATE yr, xr - 6: PRINT " Õ": COLOR 7: LOCATE yr, xr - 3: PRINT "Õ": COLOR 7: COLOR 4: LOCATE yr, xr - 1: PRINT "/    "
 LOCATE yr + 1, xr - 6: PRINT "         "

END SUB

