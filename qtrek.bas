'qtrek
'star trek themed game for dos / dosemu / dosbox
'run: qbasic /run qtrek.bas

DECLARE SUB display ()
DECLARE SUB xxf10 ()
DECLARE SUB xxf11 ()
DECLARE SUB xxf9 ()
DECLARE SUB xxf12 ()
DECLARE SUB box (kbox%)
DECLARE SUB box1 ()
DECLARE SUB kra ()
DECLARE SUB krz ()
DECLARE SUB c ()
DECLARE SUB d ()
DECLARE SUB f ()
DECLARE SUB h ()
DECLARE SUB i ()
DECLARE SUB l ()
DECLARE SUB r ()
DECLARE SUB s ()
DECLARE SUB e ()
DECLARE SUB k ()
DECLARE SUB empty (lr%)
DECLARE SUB n ()
DECLARE SUB p ()
DECLARE SUB t ()
DECLARE SUB u ()
DECLARE SUB dpt ()
DECLARE SUB empty2 ()
DECLARE SUB minus ()

DECLARE SUB z1 ()
DECLARE SUB z2 ()
DECLARE SUB z3 ()
DECLARE SUB z4 ()
DECLARE SUB z5 ()
DECLARE SUB z6 ()
DECLARE SUB z7 ()
DECLARE SUB z8 ()
DECLARE SUB z9 ()
DECLARE SUB z0 ()

DECLARE SUB crash ()
DECLARE SUB srnd ()
DECLARE SUB xxf5 ()
DECLARE SUB xxf6 ()
DECLARE SUB xxf7 ()
DECLARE SUB xxf8 ()
DECLARE SUB xxf1 ()
DECLARE SUB xxf2 ()
DECLARE SUB xxf3 ()
DECLARE SUB xxf4 ()
DECLARE SUB enemy ()
DECLARE SUB bounce ()
DECLARE SUB stars ()
DECLARE SUB ship ()
DECLARE SUB photon (xf%, yf%)
DECLARE SUB prnumber (num%, stl%)

DIM SHARED x%, y%, xp%, yp%, lx%, ly%, kstn%
DIM SHARED ex%, ey%, enm%, ez%, ek%, eex%
DIM SHARED stt%, snd%, snp%, cb%, cf%
DIM SHARED trf%, punkte%, shl%
DIM ys%(49), zs%(49), xs(49) AS SINGLE

ON ERROR GOTO errorhandler
CONST pi! = 3.1416
SCREEN 13
'Umgebungsvariablen
 prm% = POINT(0, 0)
 snp% = POINT(1, 0)
 lvl% = POINT(2, 0)
CLS
RANDOMIZE TIMER
CLOSE
PALETTE 6, 60
PALETTE 5, 50
PALETTE 4, 40
PALETTE 3, 30
PALETTE 2, 20

'IF prm% = 0 THEN COLOR 12: PRINT : PRINT : PRINT : PRINT "  Sie mÅssen das Spiel mit der Datei": PRINT "  "; CHR$(34); "UNAD2.BAT"; CHR$(34); " starten!": SLEEP: SYSTEM

'Vorberechnungen fÅr Sterne
 FOR str% = 0 TO 49 + qty% * 10
 xs(str%) = RND * 320
 zs%(str%) = RND * 14 + 2
 ys%(str%) = RND * 180
 NEXT

'Variablen
 x% = 20
 y% = 100
 ex% = 300
 ey% = 102
 shl% = 10
 enm% = 15

DO

FOR str% = 0 TO 49
 PSET (xs(str%), ys%(str%)), 0
 xs(str%) = xs(str%) - zs%(str%) / 8 - 1
 IF xs(str%) < 0 THEN xs(str%) = 320
 PSET (xs(str%), ys%(str%)), zs%(str%) + 15
 NEXT

display

in$ = INKEY$
SELECT CASE in$

CASE CHR$(0) + CHR$(72)
 LINE (x%, y%)-(x% + 20, y% + 9), 0, BF: y% = y% - 8
CASE CHR$(0) + CHR$(80)
 LINE (x%, y%)-(x% + 20, y% + 9), 0, BF: y% = y% + 8
CASE CHR$(0) + CHR$(75)
 LINE (x%, y%)-(x% + 20, y% + 9), 0, BF: x% = x% - 8
CASE CHR$(0) + CHR$(77)
 LINE (x%, y%)-(x% + 20, y% + 9), 0, BF: x% = x% + 8

CASE "n"
 fv% = 1
CASE "g"
 pv% = 1
CASE "h"
 IF lv% = 0 THEN lv% = 1

CASE "s"
 IF snp% = 0 THEN snp% = 1 ELSE snp% = 0

END SELECT
bounce

crash
IF enm% = 0 THEN eex% = eex% + 1
LINE (ex%, ey%)-STEP(21, 7), 0, BF 'öberzeichnen
IF eex% > 1 THEN LINE (ex%, ey% - 3)-(ex% + 25, ey% + 15), 0, BF
'Fortbewegung
ex% = ex% - 3
'Durchlauf
IF ex% < -25 THEN ex% = 340: enm% = 15: eex% = 0: snd% = 0: ey% = INT(RND * 100) + 50: punkte% = punkte% - 100
'Sicherung
IF ey% > 170 THEN ey% = 170: ez% = 0
IF ey% < 0 THEN ey% = 0: ez% = 0

IF eex% = 1 THEN trf% = trf% + 1: punkte% = punkte% + 400
SELECT CASE INT(eex% / 2)
CASE 0: enemy
CASE 1: xxf1: snd% = 1
CASE 2: xxf2
CASE 3: xxf3
CASE 4: xxf4
CASE 5: xxf5
CASE 6: xxf6
CASE 7: xxf7
CASE 8: xxf8
CASE 9: xxf9
CASE 10: xxf10
CASE 11: xxf11
CASE 12: xxf12
CASE 13: LINE (ex%, ey% - 3)-(ex% + 25, ey% + 15), 0, BF: ex% = -21: enm% = 15: eex% = 0
END SELECT
ship
srnd

' Laser
IF lv% = 1 THEN lx% = x% + 20: ly% = y% + 7: IF ly% >= ey% AND ly% <= ey% + 7 AND ex% > x% AND eex% = 0 THEN lx2% = ex% + 7: snd% = 17: enm% = enm% - 4: punkte% = punkte% + 10 ELSE lx2% = 320: snd% = 17: punkte% = punkte% - 5
IF lv% >= 1 THEN
lv% = lv% + 1
LINE (lx%, ly%)-(lx2%, ly%), 46
IF lv% = 3 THEN lv% = 0: LINE (lx%, ly%)-(lx2%, ly%), 0
END IF

' Engine - Plasma
FOR fa% = 0 TO 2
 IF pv% = 1 AND pb%(fa%) = 0 THEN pb%(fa%) = 1: pv% = 0: snd% = 21
 IF pb%(fa%) = 1 THEN xp%(fa%) = x% + 14: yp%(fa%) = y% + 7: pb%(fa%) = 2
 IF pb%(fa%) = 2 THEN
  xp%(fa%) = xp%(fa%) + 9
  LINE (xp%(fa%), yp%(fa%))-(xp%(fa%) + 9, yp%(fa%)), 6
  LINE (xp%(fa%), yp%(fa%))-(xp%(fa%) - 8, yp%(fa%)), 0
  IF xp%(fa%) > 340 THEN pb%(fa%) = 0: punkte% = punkte% - 7
  IF xp%(fa%) > ex% AND xp%(fa%) < ex% + 17 AND yp%(fa%) >= ey% AND yp%(fa%) <= ey% + 7 AND eex% = 0 THEN pb%(fa%) = 0: LINE (xp%(fa%) + 9, yp%(fa%))-(xp%(fa%) - 8, yp%(fa%)), 0: enm% = enm% - 4: punkte% = punkte% + 14
  END IF
 NEXT

' Photon Torpedos
FOR fa% = 0 TO 5
 IF fv% = 1 AND fb%(fa%) = 0 THEN fb%(fa%) = 1: fv% = 0: snd% = 10
 IF fb%(fa%) = 1 THEN xf%(fa%) = x% + 16: yf%(fa%) = y% + 7: fb%(fa%) = 2
  IF fb%(fa%) = 2 THEN
  xf%(fa%) = xf%(fa%) + 3
  photon xf%(fa%), yf%(fa%)
  IF xf%(fa%) > 320 THEN fb%(fa%) = 0: punkte% = punkte% - 8
  IF xf%(fa%) > ex% AND xf%(fa%) < ex% + 21 AND yf%(fa%) >= ey% AND yf%(fa%) <= ey% + 7 AND eex% = 0 AND eex% = 0 THEN fb%(fa%) = 0: LINE (xf%(fa%), yf%(fa%) - 1)-(xf%(fa%) + 10, yf%(fa%) + 1), 0, BF: enm% = enm% - 5: punkte% = punkte% + 16
  END IF
 NEXT

LOOP UNTIL in$ = CHR$(27)
CHAIN "unad1"

'Handle errors by not handling errors
errorhandler:
RESUME NEXT

SUB a
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%
END SUB

SUB ae
PSET STEP(2, -4), cf%
PSET STEP(3, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%
END SUB

SUB display
cf% = 43
DRAW "bm5,198"
kra

box1
empty 1
: p: u: n: k: t: e: dpt
cf% = 43 + 48
prnumber punkte%, 4

box1
empty 1
cf% = 43
: t: r: e: f: f: e: r: dpt
IF trf% > 99 THEN trf% = 99
cf% = 43 + 48
prnumber trf%, 2

box1
empty 1
cf% = 43
: s: c: h: i: l: d: e: dpt
LINE STEP(3, -4)-STEP(shl% * 2, 4), 41, BF
IF shl% = 10 THEN LINE STEP(1, -4)-STEP(0, 4), 41 ELSE LINE STEP(1, -4)-STEP(20 - shl% * 2, 4), 113, BF
DRAW "bm+2,0"

box 30
empty 1
: f: e: i: n: d
IF enm% < 0 THEN enm% = 0
LINE STEP(3, -4)-STEP(enm% * 2, 4), 41, BF
IF enm% = 15 THEN LINE STEP(1, -4)-STEP(0, 4), 41 ELSE LINE STEP(1, -4)-STEP(30 - enm% * 2, 4), 113, BF
DRAW "bm+2,0"
box1
krz

END SUB

SUB b
PSET STEP(2, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-1, 1), cf%
PSET STEP(2, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB box (kbox%)
LINE STEP(3, -6)-STEP(kbox%, 8), 104, B
PAINT STEP(-1, -1), 32, 104
DRAW "bm+2,-1"
END SUB

SUB box1
LINE STEP(3, -6)-STEP(4, 8), 104, B
PAINT STEP(-1, -1), 32, 104
DRAW "bm+1,-1"
END SUB

SUB c
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(1, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
END SUB

SUB crash
IF x% >= ex% - 20 AND x% <= ex% + 15 AND y% >= ey% - 8 AND y% <= ey% + 7 AND enm% > 0 THEN enm% = 0: trf% = trf% - 1: punkte% = punkte% - 400: shl% = shl% - 1
END SUB

SUB d
PSET STEP(2, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-1, 1), cf%
PSET STEP(2, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB dpt
PSET STEP(2, -3), cf%

PSET STEP(0, 2), cf%

DRAW "bm+0,1"
END SUB

SUB e
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%

PSET STEP(0, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%

PSET STEP(0, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
END SUB

SUB f
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%

PSET STEP(0, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%

PSET STEP(0, 1), cf%
DRAW "bm+2, 0"
END SUB

SUB enemy
'Jump line
ez% = ez% + 1
IF ez% = 10 THEN ek% = CINT(RND * 2 - 1): ez% = 0
IF ez% = 20 THEN ek% = 0
ey% = ey% + ek%
PSET (ex% + 8, ey%), 178
PSET (ex% + 9, ey%), 130
PSET (ex% + 10, ey%), 24
PSET (ex% + 11, ey%), 25
PSET (ex% + 12, ey%), 24
PSET (ex% + 13, ey%), 24
PSET (ex% + 14, ey%), 24
PSET (ex% + 15, ey%), 24
PSET (ex% + 16, ey%), 23
PSET (ex% + 17, ey%), 21
PSET (ex% + 18, ey%), 19
PSET (ex% + 5, ey% + 1), 178
PSET (ex% + 6, ey% + 1), 106
PSET (ex% + 7, ey% + 1), 106
PSET (ex% + 8, ey% + 1), 106
PSET (ex% + 9, ey% + 1), 130
PSET (ex% + 10, ey% + 1), 154
PSET (ex% + 11, ey% + 1), 25
PSET (ex% + 12, ey% + 1), 25
PSET (ex% + 13, ey% + 1), 25
PSET (ex% + 14, ey% + 1), 25
PSET (ex% + 15, ey% + 1), 25
PSET (ex% + 16, ey% + 1), 25
PSET (ex% + 17, ey% + 1), 24
PSET (ex% + 18, ey% + 1), 23
PSET (ex% + 19, ey% + 1), 22
PSET (ex% + 20, ey% + 1), 19
PSET (ex% + 2, ey% + 2), 178
PSET (ex% + 3, ey% + 2), 106
PSET (ex% + 4, ey% + 2), 106
PSET (ex% + 5, ey% + 2), 106
PSET (ex% + 6, ey% + 2), 130
PSET (ex% + 7, ey% + 2), 154
PSET (ex% + 8, ey% + 2), 24
PSET (ex% + 9, ey% + 2), 24
PSET (ex% + 10, ey% + 2), 24
PSET (ex% + 11, ey% + 2), 24
PSET (ex% + 12, ey% + 2), 21
PSET (ex% + 13, ey% + 2), 22
PSET (ex% + 14, ey% + 2), 23
PSET (ex% + 15, ey% + 2), 25
PSET (ex% + 16, ey% + 2), 25
PSET (ex% + 17, ey% + 2), 25
PSET (ex% + 18, ey% + 2), 25
PSET (ex% + 19, ey% + 2), 24
PSET (ex% + 20, ey% + 2), 23
PSET (ex% + 21, ey% + 2), 20
PSET (ex%, ey% + 3), 21
PSET (ex% + 1, ey% + 3), 22
PSET (ex% + 2, ey% + 3), 23
PSET (ex% + 3, ey% + 3), 23
PSET (ex% + 4, ey% + 3), 24
PSET (ex% + 5, ey% + 3), 24
PSET (ex% + 6, ey% + 3), 24
PSET (ex% + 7, ey% + 3), 24
PSET (ex% + 8, ey% + 3), 24
PSET (ex% + 9, ey% + 3), 22
PSET (ex% + 10, ey% + 3), 20
PSET (ex% + 11, ey% + 3), 19
PSET (ex% + 15, ey% + 3), 22
PSET (ex% + 16, ey% + 3), 25
PSET (ex% + 17, ey% + 3), 25
PSET (ex% + 18, ey% + 3), 25
PSET (ex% + 19, ey% + 3), 23
PSET (ex% + 20, ey% + 3), 20
PSET (ex% + 3, ey% + 4), 20
PSET (ex% + 4, ey% + 4), 22
PSET (ex% + 5, ey% + 4), 22
PSET (ex% + 6, ey% + 4), 20
PSET (ex% + 7, ey% + 4), 19
PSET (ex% + 14, ey% + 4), 23
PSET (ex% + 15, ey% + 4), 26
PSET (ex% + 16, ey% + 4), 25
PSET (ex% + 17, ey% + 4), 24
PSET (ex% + 18, ey% + 4), 21
PSET (ex% + 19, ey% + 4), 19
PSET (ex% + 20, ey% + 4), 17
PSET (ex% + 9, ey% + 5), 18
PSET (ex% + 10, ey% + 5), 21
PSET (ex% + 11, ey% + 5), 23
PSET (ex% + 12, ey% + 5), 24
PSET (ex% + 13, ey% + 5), 26
PSET (ex% + 14, ey% + 5), 27
PSET (ex% + 15, ey% + 5), 25
PSET (ex% + 16, ey% + 5), 22
PSET (ex% + 17, ey% + 5), 20
PSET (ex% + 18, ey% + 5), 18
PSET (ex% + 8, ey% + 6), 42
PSET (ex% + 9, ey% + 6), 41
PSET (ex% + 10, ey% + 6), 42
PSET (ex% + 11, ey% + 6), 43
PSET (ex% + 12, ey% + 6), 44
PSET (ex% + 13, ey% + 6), 26
PSET (ex% + 14, ey% + 6), 24
PSET (ex% + 15, ey% + 6), 20
PSET (ex% + 16, ey% + 6), 18
PSET (ex% + 10, ey% + 7), 19
PSET (ex% + 11, ey% + 7), 21
PSET (ex% + 12, ey% + 7), 23
PSET (ex% + 13, ey% + 7), 21
END SUB

SUB g
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%

PSET STEP(0, 1), cf%
PSET STEP(2, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
END SUB

SUB h
PSET STEP(2, -4), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%
END SUB

SUB i
PSET STEP(2, -4), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-1, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(-1, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
END SUB

SUB k
PSET STEP(2, -4), cf%
PSET STEP(2, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(2, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%
END SUB

SUB klma1
PSET STEP(3, -4), cf%

PSET STEP(-1, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(1, 1), cf%
END SUB

SUB klma2
PSET STEP(4, -4), cf%

PSET STEP(-1, 1), cf%

PSET STEP(-1, 1), cf%

PSET STEP(1, 1), cf%

PSET STEP(1, 1), cf%
END SUB

SUB klmz1
PSET STEP(2, -4), cf%

PSET STEP(1, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(-1, 1), cf%
DRAW "bm+1,0"
END SUB

SUB klmz2
PSET STEP(2, -4), cf%

PSET STEP(1, 1), cf%

PSET STEP(1, 1), cf%

PSET STEP(-1, 1), cf%

PSET STEP(-1, 1), cf%
DRAW "bm+2,0"
END SUB

SUB kra
CIRCLE STEP(6, -3), 5, 104, pi! / 2, 3 * pi! / 2
LINE STEP(0, 4)-STEP(0, -8), 104
PAINT STEP(-4, 3), 32, 104
DRAW "bm+4, 3"
END SUB

SUB krz
CIRCLE STEP(3, -2), 5, 104, 3 * pi! / 2, pi! / 2
LINE STEP(0, 4)-STEP(0, -8), 104
PAINT STEP(4, 3), 32, 104
DRAW "bm+1, 3"
END SUB

SUB l
PSET STEP(2, -4), cf%

PSET STEP(0, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(0, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
END SUB

SUB empty (lr%)
DRAW "bm +" + STR$(lr%) + ",0"
END SUB

SUB empty2
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
END SUB

SUB m
PSET STEP(3, -4), cf%
PSET STEP(2, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(2, 0), cf%
PSET STEP(2, 0), cf%

PSET STEP(-4, 1), cf%
PSET STEP(4, 0), cf%

PSET STEP(-4, 1), cf%
PSET STEP(4, 0), cf%
END SUB

SUB minus
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
END SUB

SUB n
PSET STEP(2, -4), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(2, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(2, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%
         
PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%
END SUB

SUB o
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB oe
PSET STEP(2, -4), cf%
PSET STEP(3, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB p
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%

PSET STEP(0, 1), cf%
DRAW "bm+3, 0"
END SUB

SUB photon (xf%, yf%)
PSET (xf% + 3, yf% - 1), 0
PSET (xf% + 4, yf% - 1), 0
PSET (xf% + 5, yf% - 1), 0
PSET (xf% + 6, yf% - 1), 185 + INT(RND * 3)
PSET (xf% + 7, yf% - 1), 113 + INT(RND * 3)
PSET (xf% + 8, yf% - 1), 41 + INT(RND * 3)
PSET (xf% + 9, yf% - 1), 113 + INT(RND * 3)
PSET (xf% + 1, yf%), 0
PSET (xf% + 2, yf%), 0
PSET (xf% + 3, yf%), 0
PSET (xf% + 4, yf%), 185 + INT(RND * 3)
PSET (xf% + 5, yf%), 113 + INT(RND * 3)
PSET (xf% + 6, yf%), 113 + INT(RND * 3)
PSET (xf% + 7, yf%), 41 + INT(RND * 3)
PSET (xf% + 8, yf%), 41 + INT(RND * 3)
PSET (xf% + 9, yf%), 41 + INT(RND * 3)
PSET (xf% + 10, yf%), 113 + INT(RND * 3)
PSET (xf% + 3, yf% + 1), 0
PSET (xf% + 4, yf% + 1), 0
PSET (xf% + 5, yf% + 1), 0
PSET (xf% + 6, yf% + 1), 185 + INT(RND * 3)
PSET (xf% + 7, yf% + 1), 113 + INT(RND * 3)
PSET (xf% + 8, yf% + 1), 41 + INT(RND * 3)
PSET (xf% + 9, yf% + 1), 113 + INT(RND * 3)
END SUB

SUB punkt
PSET STEP(2, 0), cf%
END SUB

SUB q
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(2, 0), cf%

PSET STEP(-1, 1), cf%
PSET STEP(2, 0), cf%
END SUB

SUB r
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(2, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%
END SUB

SUB s
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-3, 1), cf%

PSET STEP(1, 1), cf%
PSET STEP(1, 0), cf%

PSET STEP(1, 1), cf%

PSET STEP(-3, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB ship
PSET (x% + 3, y%), 20
PSET (x% + 4, y%), 22
PSET (x% + 5, y%), 23
PSET (x% + 6, y%), 23
PSET (x% + 7, y%), 21
PSET (x% + 8, y%), 177
PSET (x% + 2, y% + 1), 21
PSET (x% + 3, y% + 1), 23
PSET (x% + 4, y% + 1), 23
PSET (x% + 5, y% + 1), 21
PSET (x% + 6, y% + 1), 21
PSET (x% + 7, y% + 1), 201
PSET (x% + 8, y% + 1), 105
PSET (x% + 9, y% + 1), 105
PSET (x% + 10, y% + 1), 177
PSET (x% + 11, y% + 1), 177
PSET (x% + 1, y% + 2), 21
PSET (x% + 2, y% + 2), 23
PSET (x% + 3, y% + 2), 23
PSET (x% + 4, y% + 2), 22
PSET (x% + 5, y% + 2), 21
PSET (x% + 6, y% + 2), 200
PSET (x% + 7, y% + 2), 105
PSET (x% + 8, y% + 2), 104
PSET (x% + 9, y% + 2), 104
PSET (x% + 10, y% + 2), 104
PSET (x% + 11, y% + 2), 104
PSET (x% + 12, y% + 2), 105
PSET (x% + 13, y% + 2), 177
PSET (x% + 14, y% + 2), 177
PSET (x%, y% + 3), 20
PSET (x% + 1, y% + 3), 23
PSET (x% + 2, y% + 3), 23
PSET (x% + 3, y% + 3), 22
PSET (x% + 4, y% + 3), 21
PSET (x% + 5, y% + 3), 21
PSET (x% + 6, y% + 3), 21
PSET (x% + 7, y% + 3), 200
PSET (x% + 8, y% + 3), 105
PSET (x% + 9, y% + 3), 105
PSET (x% + 10, y% + 3), 200
PSET (x% + 11, y% + 3), 223
PSET (x% + 12, y% + 3), 21
PSET (x% + 13, y% + 3), 21
PSET (x% + 14, y% + 3), 20
PSET (x% + 15, y% + 3), 19
PSET (x% + 16, y% + 3), 18
PSET (x%, y% + 4), 21
PSET (x% + 1, y% + 4), 22
PSET (x% + 2, y% + 4), 21
PSET (x% + 3, y% + 4), 20
PSET (x% + 4, y% + 4), 20
PSET (x% + 5, y% + 4), 20
PSET (x% + 6, y% + 4), 21
PSET (x% + 7, y% + 4), 21
PSET (x% + 8, y% + 4), 21
PSET (x% + 9, y% + 4), 21
PSET (x% + 10, y% + 4), 21
PSET (x% + 11, y% + 4), 21
PSET (x% + 12, y% + 4), 20
PSET (x% + 13, y% + 4), 19
PSET (x% + 14, y% + 4), 19
PSET (x% + 15, y% + 4), 18
PSET (x% + 16, y% + 4), 17
PSET (x% + 1, y% + 5), 18
PSET (x% + 2, y% + 5), 19
PSET (x% + 3, y% + 5), 19
PSET (x% + 4, y% + 5), 19
PSET (x% + 5, y% + 5), 19
PSET (x% + 6, y% + 5), 19
PSET (x% + 7, y% + 5), 20
PSET (x% + 8, y% + 5), 21
PSET (x% + 9, y% + 5), 21
PSET (x% + 10, y% + 5), 20
PSET (x% + 11, y% + 5), 19
PSET (x% + 12, y% + 5), 18
PSET (x% + 13, y% + 5), 17
PSET (x% + 2, y% + 6), 17
PSET (x% + 3, y% + 6), 18
PSET (x% + 4, y% + 6), 18
PSET (x% + 5, y% + 6), 18
PSET (x% + 6, y% + 6), 18
PSET (x% + 7, y% + 6), 18
PSET (x% + 8, y% + 6), 21
PSET (x% + 9, y% + 6), 22
PSET (x% + 10, y% + 6), 23
PSET (x% + 11, y% + 6), 23
PSET (x% + 12, y% + 6), 23
PSET (x% + 13, y% + 6), 23
PSET (x% + 14, y% + 6), 22
PSET (x% + 15, y% + 6), 23
PSET (x% + 16, y% + 6), 117
PSET (x% + 17, y% + 6), 189
PSET (x% + 6, y% + 7), 23
PSET (x% + 8, y% + 7), 24
PSET (x% + 10, y% + 7), 24
PSET (x% + 12, y% + 7), 25
PSET (x% + 13, y% + 7), 24
PSET (x% + 14, y% + 7), 24
PSET (x% + 15, y% + 7), 144
PSET (x% + 16, y% + 7), 44 + INT(RND * -4)
PSET (x% + 17, y% + 7), 43 + INT(RND * -4)
PSET (x% + 18, y% + 7), 117
PSET (x% + 19, y% + 7), 189
PSET (x% + 7, y% + 8), 19
PSET (x% + 8, y% + 8), 20
PSET (x% + 9, y% + 8), 20
PSET (x% + 10, y% + 8), 21
PSET (x% + 11, y% + 8), 21
PSET (x% + 12, y% + 8), 21
PSET (x% + 13, y% + 8), 21
PSET (x% + 14, y% + 8), 21
PSET (x% + 15, y% + 8), 22
PSET (x% + 16, y% + 8), 117
PSET (x% + 17, y% + 8), 189

kstn% = kstn% + 1
SELECT CASE kstn%
CASE 1
PSET (x% + 4, y% + 7), 6
PSET (x% + 5, y% + 7), 5
PSET (x% + 7, y% + 7), 4
PSET (x% + 9, y% + 7), 3
PSET (x% + 11, y% + 7), 2
CASE 2
PSET (x% + 4, y% + 7), 5
PSET (x% + 5, y% + 7), 4
PSET (x% + 7, y% + 7), 3
PSET (x% + 9, y% + 7), 2
PSET (x% + 11, y% + 7), 6
CASE 3
PSET (x% + 4, y% + 7), 4
PSET (x% + 5, y% + 7), 3
PSET (x% + 7, y% + 7), 2
PSET (x% + 9, y% + 7), 6
PSET (x% + 11, y% + 7), 5
CASE 4
PSET (x% + 4, y% + 7), 3
PSET (x% + 5, y% + 7), 2
PSET (x% + 7, y% + 7), 6
PSET (x% + 9, y% + 7), 5
PSET (x% + 11, y% + 7), 4
CASE 5
PSET (x% + 4, y% + 7), 2
PSET (x% + 5, y% + 7), 6
PSET (x% + 7, y% + 7), 5
PSET (x% + 9, y% + 7), 4
PSET (x% + 11, y% + 7), 3
kstn% = 0
END SELECT
END SUB

SUB bounce
IF x% > 300 THEN x% = 300
IF x% < 0 THEN x% = 0
IF y% > 180 THEN y% = 180
IF y% < 0 THEN y% = 0
END SUB

SUB srnd
IF snp% = 0 THEN snd% = 0 ELSE PLAY "l64"
SELECT CASE snd%

CASE 0
 PLAY "p64"

CASE 1      'Explosion
 PLAY "n15"
 snd% = 2
CASE 2
 PLAY "n25"
 snd% = 3
CASE 3
 PLAY "n10"
 snd% = 4
CASE 4
 PLAY "n20"
 snd% = 5
CASE 5
 PLAY "n16"
 snd% = 6
CASE 6
 PLAY "n12"
 snd% = 7
CASE 7
 PLAY "n29"
 snd% = 8
CASE 8
 PLAY "n17"
 snd% = 9
CASE 9
 PLAY "n20"
 snd% = 0

CASE 10     'Torpedos
 PLAY "n20"
 snd% = 11
CASE 11
 PLAY "n22"
 snd% = 12
CASE 12
 PLAY "n24"
 snd% = 13
CASE 13
 PLAY "n26"
 snd% = 14
CASE 14
 PLAY "n28"
 snd% = 15
CASE 15
 PLAY "n30"
 snd% = 0

CASE 17     'Phaser
 PLAY "n32"
 snd% = 18
CASE 18
 PLAY "n31"
 snd% = 19
CASE 19
 PLAY "n32"
 snd% = 0

CASE 21     'Plasma
 PLAY "n28"
 snd% = 22
CASE 22
 PLAY "n27"
 snd% = 23
CASE 23
 PLAY "n26"
 snd% = 24
CASE 24
 PLAY "n24"
 snd% = 25
CASE 25
 PLAY "n22"
 snd% = 26
CASE 26
 PLAY "n20"
 snd% = 0

END SELECT
END SUB

SUB stars
PSET (226, 9), 23
PSET (245, 10), 25
PSET (4, 152), 29
PSET (207, 52), 21
PSET (149, 59), 26
PSET (92, 60), 28
PSET (303, 72), 24
PSET (225, 106), 25
PSET (276, 158), 22
PSET (307, 174), 17
PSET (265, 164), 25
PSET (315, 182), 20
PSET (222, 36), 20
PSET (170, 21), 31
PSET (216, 3), 25
PSET (32, 20), 28
PSET (91, 9), 21
PSET (122, 60), 31
PSET (313, 80), 21
PSET (51, 32), 26
PSET (131, 82), 27
PSET (104, 126), 20
PSET (59, 116), 18
PSET (146, 181), 20
PSET (251, 75), 21
PSET (294, 126), 26
PSET (137, 19), 25
PSET (222, 182), 29
PSET (7, 108), 30
PSET (137, 135), 24
PSET (164, 92), 22
PSET (129, 53), 17
PSET (78, 145), 17
PSET (124, 72), 24
PSET (49, 94), 20
PSET (201, 108), 19
PSET (300, 130), 24
PSET (124, 21), 28
PSET (147, 150), 25
PSET (266, 3), 20
PSET (23, 21), 21
PSET (41, 0), 25
PSET (210, 108), 29
PSET (26, 38), 27
PSET (145, 71), 19
PSET (225, 185), 24
PSET (28, 151), 23
PSET (147, 98), 20
PSET (105, 19), 25
PSET (54, 185), 18
PSET (142, 54), 30
PSET (240, 54), 27
PSET (82, 17), 17
PSET (103, 158), 21
PSET (75, 96), 20
PSET (108, 8), 24
PSET (65, 172), 25
PSET (241, 185), 21
PSET (173, 16), 26
PSET (131, 122), 18
PSET (295, 124), 22
PSET (47, 95), 20
PSET (317, 26), 17
PSET (110, 109), 30
PSET (172, 81), 29
PSET (264, 134), 27
PSET (318, 67), 24
PSET (132, 139), 19
PSET (135, 108), 29
PSET (173, 85), 24
PSET (72, 123), 24
PSET (217, 177), 22
PSET (96, 58), 19
PSET (169, 44), 25
PSET (116, 175), 24
PSET (61, 136), 28
PSET (196, 156), 19
PSET (258, 40), 31
PSET (21, 12), 28
PSET (121, 92), 18
PSET (36, 34), 17
PSET (228, 106), 25
PSET (69, 93), 28
PSET (240, 79), 30
PSET (238, 17), 26
PSET (228, 3), 23
PSET (128, 55), 31
PSET (256, 139), 23
PSET (235, 55), 22
PSET (138, 188), 18
PSET (206, 69), 18
PSET (59, 15), 23
PSET (306, 108), 24
PSET (311, 43), 22
PSET (126, 56), 24
PSET (44, 103), 31
PSET (178, 181), 26
PSET (141, 138), 17
PSET (241, 140), 24
PSET (49, 44), 21
PSET (251, 10), 24
PSET (242, 160), 21
PSET (311, 160), 27
PSET (289, 175), 23
PSET (39, 120), 28
PSET (222, 80), 17
PSET (53, 32), 24
PSET (129, 21), 21
PSET (205, 169), 24
PSET (60, 179), 22
PSET (103, 154), 20
PSET (143, 47), 30
PSET (195, 74), 22
PSET (275, 117), 30
PSET (165, 66), 30
PSET (82, 51), 19
PSET (111, 0), 28
PSET (269, 55), 27
PSET (129, 162), 28
PSET (140, 15), 23
PSET (108, 142), 21
PSET (255, 30), 25
PSET (305, 48), 31
PSET (36, 96), 26
PSET (191, 180), 25
PSET (78, 172), 18
PSET (140, 151), 20
PSET (121, 79), 24
PSET (86, 116), 20
PSET (25, 179), 18
PSET (208, 180), 20
PSET (303, 169), 23
PSET (157, 153), 29
PSET (122, 39), 21
PSET (132, 30), 26
PSET (31, 41), 27
PSET (161, 36), 31
PSET (150, 0), 23
PSET (92, 150), 30
PSET (263, 35), 18
PSET (3, 30), 22
PSET (60, 125), 30
PSET (186, 145), 19
PSET (82, 5), 29
PSET (250, 158), 21
PSET (144, 111), 29
PSET (180, 40), 20
PSET (116, 114), 22
PSET (169, 85), 25
PSET (16, 109), 20
PSET (308, 186), 31
PSET (268, 81), 29
PSET (316, 51), 19
PSET (222, 3), 22
PSET (221, 22), 18
PSET (92, 79), 25
PSET (99, 59), 29
PSET (99, 75), 23
PSET (269, 81), 27
PSET (210, 81), 31
PSET (206, 103), 20
PSET (186, 149), 23
PSET (289, 56), 27
PSET (284, 56), 22
PSET (4, 58), 31
PSET (243, 116), 26
PSET (85, 101), 28
PSET (274, 18), 25
PSET (132, 14), 23
PSET (223, 99), 23
PSET (302, 16), 25
PSET (170, 123), 18
PSET (59, 56), 17
PSET (48, 84), 25
PSET (178, 156), 17
PSET (129, 11), 21
PSET (192, 103), 25
PSET (105, 181), 28
PSET (184, 86), 27
PSET (52, 11), 20
PSET (242, 100), 22
PSET (218, 158), 17
PSET (254, 96), 20
PSET (192, 181), 31
PSET (209, 2), 26
PSET (308, 1), 31
PSET (23, 58), 25
PSET (258, 8), 17
PSET (180, 62), 23
PSET (163, 146), 23
PSET (103, 14), 23
PSET (183, 152), 25
PSET (208, 161), 23
PSET (255, 144), 27
PSET (233, 38), 28
PSET (22, 49), 31
PSET (262, 43), 19
PSET (75, 185), 20
PSET (81, 142), 26
PSET (247, 151), 21
PSET (263, 143), 30
END SUB

SUB sz
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(2, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(2, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB t
PSET STEP(2, -4), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-2, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(0, 1), cf%

PSET STEP(0, 1), cf%
DRAW "bm+2, 0"
END SUB

SUB u
PSET STEP(2, -4), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB ue
PSET STEP(2, -4), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 2), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-2, 1), cf%
PSET STEP(1, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB v
PSET STEP(2, -4), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(3, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(2, 0), cf%

PSET STEP(-1, 1), cf%
DRAW "bm+2, 0"
END SUB

SUB w
PSET STEP(2, -4), cf%
PSET STEP(4, 0), cf%

PSET STEP(-4, 1), cf%
PSET STEP(2, 0), cf%
PSET STEP(2, 0), cf%

PSET STEP(-4, 1), cf%
PSET STEP(2, 0), cf%
PSET STEP(2, 0), cf%

PSET STEP(-4, 1), cf%
PSET STEP(2, 0), cf%
PSET STEP(2, 0), cf%

PSET STEP(-3, 1), cf%
PSET STEP(2, 0), cf%
DRAW "bm+1, 0"
END SUB

SUB xxf1
PSET (ex% + 8, ey% + 0), 178
PSET (ex% + 9, ey% + 0), 130
PSET (ex% + 10, ey% + 0), 23
PSET (ex% + 11, ey% + 0), 24
PSET (ex% + 12, ey% + 0), 24
PSET (ex% + 13, ey% + 0), 24
PSET (ex% + 14, ey% + 0), 24
PSET (ex% + 15, ey% + 0), 25
PSET (ex% + 16, ey% + 0), 25
PSET (ex% + 17, ey% + 0), 24
PSET (ex% + 18, ey% + 0), 21
PSET (ex% + 19, ey% + 0), 19
PSET (ex% + 5, ey% + 1), 178
PSET (ex% + 6, ey% + 1), 106
PSET (ex% + 7, ey% + 1), 106
PSET (ex% + 8, ey% + 1), 106
PSET (ex% + 9, ey% + 1), 130
PSET (ex% + 10, ey% + 1), 154
PSET (ex% + 11, ey% + 1), 26
PSET (ex% + 12, ey% + 1), 26
PSET (ex% + 13, ey% + 1), 42
PSET (ex% + 14, ey% + 1), 43
PSET (ex% + 15, ey% + 1), 44
PSET (ex% + 16, ey% + 1), 43
PSET (ex% + 17, ey% + 1), 44
PSET (ex% + 18, ey% + 1), 42
PSET (ex% + 19, ey% + 1), 19
PSET (ex% + 20, ey% + 1), 19
PSET (ex% + 2, ey% + 2), 178
PSET (ex% + 3, ey% + 2), 106
PSET (ex% + 4, ey% + 2), 106
PSET (ex% + 5, ey% + 2), 106
PSET (ex% + 6, ey% + 2), 130
PSET (ex% + 7, ey% + 2), 154
PSET (ex% + 8, ey% + 2), 25
PSET (ex% + 9, ey% + 2), 25
PSET (ex% + 10, ey% + 2), 25
PSET (ex% + 11, ey% + 2), 23
PSET (ex% + 12, ey% + 2), 21
PSET (ex% + 13, ey% + 2), 21
PSET (ex% + 14, ey% + 2), 22
PSET (ex% + 15, ey% + 2), 43
PSET (ex% + 16, ey% + 2), 44
PSET (ex% + 17, ey% + 2), 44
PSET (ex% + 18, ey% + 2), 43
PSET (ex% + 19, ey% + 2), 42
PSET (ex% + 20, ey% + 2), 23
PSET (ex% + 21, ey% + 2), 21
PSET (ex% + 0, ey% + 3), 21
PSET (ex% + 1, ey% + 3), 22
PSET (ex% + 2, ey% + 3), 23
PSET (ex% + 3, ey% + 3), 23
PSET (ex% + 4, ey% + 3), 24
PSET (ex% + 5, ey% + 3), 24
PSET (ex% + 6, ey% + 3), 24
PSET (ex% + 7, ey% + 3), 24
PSET (ex% + 8, ey% + 3), 24
PSET (ex% + 9, ey% + 3), 21
PSET (ex% + 10, ey% + 3), 21
PSET (ex% + 11, ey% + 3), 20
PSET (ex% + 12, ey% + 3), 20
PSET (ex% + 14, ey% + 3), 24
PSET (ex% + 15, ey% + 3), 25
PSET (ex% + 16, ey% + 3), 25
PSET (ex% + 17, ey% + 3), 43
PSET (ex% + 18, ey% + 3), 24
PSET (ex% + 19, ey% + 3), 20
PSET (ex% + 20, ey% + 3), 19
PSET (ex% + 21, ey% + 3), 19
PSET (ex% + 3, ey% + 4), 20
PSET (ex% + 4, ey% + 4), 22
PSET (ex% + 5, ey% + 4), 22
PSET (ex% + 6, ey% + 4), 20
PSET (ex% + 7, ey% + 4), 19
PSET (ex% + 13, ey% + 4), 24
PSET (ex% + 14, ey% + 4), 25
PSET (ex% + 15, ey% + 4), 25
PSET (ex% + 16, ey% + 4), 25
PSET (ex% + 17, ey% + 4), 21
PSET (ex% + 18, ey% + 4), 20
PSET (ex% + 19, ey% + 4), 20
PSET (ex% + 20, ey% + 4), 19
PSET (ex% + 9, ey% + 5), 22
PSET (ex% + 10, ey% + 5), 24
PSET (ex% + 11, ey% + 5), 25
PSET (ex% + 12, ey% + 5), 25
PSET (ex% + 13, ey% + 5), 25
PSET (ex% + 14, ey% + 5), 25
PSET (ex% + 15, ey% + 5), 24
PSET (ex% + 16, ey% + 5), 20
PSET (ex% + 17, ey% + 5), 20
PSET (ex% + 18, ey% + 5), 19
PSET (ex% + 8, ey% + 6), 42
PSET (ex% + 9, ey% + 6), 41
PSET (ex% + 10, ey% + 6), 42
PSET (ex% + 11, ey% + 6), 43
PSET (ex% + 12, ey% + 6), 44
PSET (ex% + 13, ey% + 6), 25
PSET (ex% + 14, ey% + 6), 20
PSET (ex% + 15, ey% + 6), 19
PSET (ex% + 16, ey% + 6), 19
PSET (ex% + 9, ey% + 7), 20
PSET (ex% + 10, ey% + 7), 21
PSET (ex% + 11, ey% + 7), 22
PSET (ex% + 12, ey% + 7), 22
PSET (ex% + 13, ey% + 7), 20
PSET (ex% + 14, ey% + 7), 19
END SUB

SUB xxf10
PSET (ex% + 15, ey% + -1), 40
PSET (ex% + 16, ey% + -1), 41
PSET (ex% + 13, ey% + 0), 41
PSET (ex% + 14, ey% + 0), 40
PSET (ex% + 15, ey% + 0), 42
PSET (ex% + 16, ey% + 0), 40
PSET (ex% + 17, ey% + 0), 40
PSET (ex% + 8, ey% + 1), 40
PSET (ex% + 14, ey% + 1), 40
PSET (ex% + 16, ey% + 3), 40
PSET (ex% + 19, ey% + 3), 41
PSET (ex% + 21, ey% + 3), 40
PSET (ex% + 8, ey% + 4), 40
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 40
PSET (ex% + 20, ey% + 4), 41
PSET (ex% + 11, ey% + 5), 41
PSET (ex% + 9, ey% + 6), 41
PSET (ex% + 15, ey% + 6), 42
PSET (ex% + 19, ey% + 6), 42
PSET (ex% + 12, ey% + 7), 41
PSET (ex% + 14, ey% + 7), 41
PSET (ex% + 15, ey% + 7), 42
PSET (ex% + 16, ey% + 7), 41
PSET (ex% + 17, ey% + 7), 42
PSET (ex% + 11, ey% + 8), 41
PSET (ex% + 13, ey% + 8), 42
PSET (ex% + 14, ey% + 8), 41
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 11, ey% + 9), 40
PSET (ex% + 12, ey% + 9), 41
PSET (ex% + 13, ey% + 9), 41
PSET (ex% + 14, ey% + 9), 40
PSET (ex% + 12, ey% + 10), 40
END SUB

SUB xxf11
PSET (ex% + 13, ey% + 0), 41
PSET (ex% + 16, ey% + 0), 40
PSET (ex% + 14, ey% + 1), 40
PSET (ex% + 21, ey% + 3), 43
PSET (ex% + 14, ey% + 4), 40
PSET (ex% + 15, ey% + 6), 42
PSET (ex% + 12, ey% + 7), 41
PSET (ex% + 13, ey% + 8), 41
PSET (ex% + 14, ey% + 8), 43
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 11, ey% + 9), 42
PSET (ex% + 13, ey% + 9), 43
PSET (ex% + 12, ey% + 10), 40
END SUB

SUB xxf12
PSET (ex% + 14, ey% + 8), 40
PSET (ex% + 11, ey% + 9), 41
PSET (ex% + 13, ey% + 9), 42
PSET (ex% + 14, ey% + 10), 40
END SUB

SUB xxf2
PSET (ex% + 16, ey% + -1), 41
PSET (ex% + 8, ey% + 0), 178
PSET (ex% + 9, ey% + 0), 130
PSET (ex% + 10, ey% + 0), 23
PSET (ex% + 11, ey% + 0), 24
PSET (ex% + 12, ey% + 0), 42
PSET (ex% + 13, ey% + 0), 24
PSET (ex% + 14, ey% + 0), 24
PSET (ex% + 15, ey% + 0), 42
PSET (ex% + 16, ey% + 0), 42
PSET (ex% + 17, ey% + 0), 41
PSET (ex% + 18, ey% + 0), 21
PSET (ex% + 19, ey% + 0), 19
PSET (ex% + 5, ey% + 1), 178
PSET (ex% + 6, ey% + 1), 106
PSET (ex% + 7, ey% + 1), 106
PSET (ex% + 8, ey% + 1), 106
PSET (ex% + 9, ey% + 1), 130
PSET (ex% + 10, ey% + 1), 154
PSET (ex% + 11, ey% + 1), 42
PSET (ex% + 12, ey% + 1), 43
PSET (ex% + 13, ey% + 1), 43
PSET (ex% + 14, ey% + 1), 42
PSET (ex% + 15, ey% + 1), 43
PSET (ex% + 16, ey% + 1), 43
PSET (ex% + 17, ey% + 1), 44
PSET (ex% + 18, ey% + 1), 42
PSET (ex% + 19, ey% + 1), 19
PSET (ex% + 20, ey% + 1), 19
PSET (ex% + 2, ey% + 2), 178
PSET (ex% + 3, ey% + 2), 106
PSET (ex% + 4, ey% + 2), 106
PSET (ex% + 5, ey% + 2), 106
PSET (ex% + 6, ey% + 2), 130
PSET (ex% + 7, ey% + 2), 154
PSET (ex% + 8, ey% + 2), 25
PSET (ex% + 9, ey% + 2), 25
PSET (ex% + 10, ey% + 2), 25
PSET (ex% + 11, ey% + 2), 23
PSET (ex% + 12, ey% + 2), 42
PSET (ex% + 13, ey% + 2), 21
PSET (ex% + 14, ey% + 2), 44
PSET (ex% + 15, ey% + 2), 43
PSET (ex% + 16, ey% + 2), 44
PSET (ex% + 17, ey% + 2), 44
PSET (ex% + 18, ey% + 2), 43
PSET (ex% + 19, ey% + 2), 42
PSET (ex% + 20, ey% + 2), 23
PSET (ex% + 21, ey% + 2), 21
PSET (ex% + 0, ey% + 3), 21
PSET (ex% + 1, ey% + 3), 22
PSET (ex% + 2, ey% + 3), 23
PSET (ex% + 3, ey% + 3), 23
PSET (ex% + 4, ey% + 3), 24
PSET (ex% + 5, ey% + 3), 24
PSET (ex% + 6, ey% + 3), 24
PSET (ex% + 7, ey% + 3), 24
PSET (ex% + 8, ey% + 3), 24
PSET (ex% + 9, ey% + 3), 21
PSET (ex% + 10, ey% + 3), 21
PSET (ex% + 11, ey% + 3), 20
PSET (ex% + 12, ey% + 3), 20
PSET (ex% + 14, ey% + 3), 24
PSET (ex% + 15, ey% + 3), 25
PSET (ex% + 16, ey% + 3), 44
PSET (ex% + 17, ey% + 3), 43
PSET (ex% + 18, ey% + 3), 42
PSET (ex% + 19, ey% + 3), 20
PSET (ex% + 20, ey% + 3), 19
PSET (ex% + 21, ey% + 3), 19
PSET (ex% + 3, ey% + 4), 20
PSET (ex% + 4, ey% + 4), 22
PSET (ex% + 5, ey% + 4), 22
PSET (ex% + 6, ey% + 4), 20
PSET (ex% + 7, ey% + 4), 19
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 43
PSET (ex% + 15, ey% + 4), 44
PSET (ex% + 16, ey% + 4), 43
PSET (ex% + 17, ey% + 4), 42
PSET (ex% + 18, ey% + 4), 20
PSET (ex% + 19, ey% + 4), 20
PSET (ex% + 20, ey% + 4), 19
PSET (ex% + 9, ey% + 5), 19
PSET (ex% + 10, ey% + 5), 21
PSET (ex% + 11, ey% + 5), 22
PSET (ex% + 12, ey% + 5), 24
PSET (ex% + 13, ey% + 5), 25
PSET (ex% + 14, ey% + 5), 25
PSET (ex% + 15, ey% + 5), 43
PSET (ex% + 16, ey% + 5), 20
PSET (ex% + 17, ey% + 5), 20
PSET (ex% + 18, ey% + 5), 19
PSET (ex% + 8, ey% + 6), 19
PSET (ex% + 9, ey% + 6), 19
PSET (ex% + 10, ey% + 6), 42
PSET (ex% + 11, ey% + 6), 44
PSET (ex% + 12, ey% + 6), 43
PSET (ex% + 13, ey% + 6), 24
PSET (ex% + 14, ey% + 6), 20
PSET (ex% + 15, ey% + 6), 19
PSET (ex% + 16, ey% + 6), 19
PSET (ex% + 8, ey% + 7), 41
PSET (ex% + 9, ey% + 7), 42
PSET (ex% + 10, ey% + 7), 44
PSET (ex% + 11, ey% + 7), 26
PSET (ex% + 12, ey% + 7), 23
PSET (ex% + 13, ey% + 7), 21
PSET (ex% + 14, ey% + 7), 19
PSET (ex% + 8, ey% + 8), 19
PSET (ex% + 9, ey% + 8), 22
PSET (ex% + 10, ey% + 8), 24
PSET (ex% + 11, ey% + 8), 22
END SUB

SUB xxf3
PSET (ex% + 18, ey% + -3), 41
PSET (ex% + 11, ey% + -2), 41
PSET (ex% + 13, ey% + -2), 41
PSET (ex% + 16, ey% + -2), 42
PSET (ex% + 17, ey% + -2), 44
PSET (ex% + 18, ey% + -2), 43
PSET (ex% + 19, ey% + -2), 42
PSET (ex% + 10, ey% + -1), 41
PSET (ex% + 11, ey% + -1), 42
PSET (ex% + 12, ey% + -1), 43
PSET (ex% + 15, ey% + -1), 42
PSET (ex% + 16, ey% + -1), 44
PSET (ex% + 17, ey% + -1), 43
PSET (ex% + 18, ey% + -1), 44
PSET (ex% + 21, ey% + -1), 41
PSET (ex% + 8, ey% + 0), 178
PSET (ex% + 9, ey% + 0), 41
PSET (ex% + 10, ey% + 0), 42
PSET (ex% + 11, ey% + 0), 43
PSET (ex% + 12, ey% + 0), 43
PSET (ex% + 13, ey% + 0), 42
PSET (ex% + 14, ey% + 0), 24
PSET (ex% + 15, ey% + 0), 42
PSET (ex% + 16, ey% + 0), 44
PSET (ex% + 17, ey% + 0), 43
PSET (ex% + 18, ey% + 0), 43
PSET (ex% + 19, ey% + 0), 42
PSET (ex% + 20, ey% + 0), 42
PSET (ex% + 21, ey% + 0), 44
PSET (ex% + 22, ey% + 0), 43
PSET (ex% + 23, ey% + 0), 42
PSET (ex% + 5, ey% + 1), 42
PSET (ex% + 6, ey% + 1), 43
PSET (ex% + 7, ey% + 1), 106
PSET (ex% + 8, ey% + 1), 106
PSET (ex% + 9, ey% + 1), 130
PSET (ex% + 10, ey% + 1), 43
PSET (ex% + 11, ey% + 1), 42
PSET (ex% + 12, ey% + 1), 44
PSET (ex% + 13, ey% + 1), 43
PSET (ex% + 14, ey% + 1), 44
PSET (ex% + 15, ey% + 1), 43
PSET (ex% + 16, ey% + 1), 43
PSET (ex% + 17, ey% + 1), 44
PSET (ex% + 18, ey% + 1), 42
PSET (ex% + 19, ey% + 1), 44
PSET (ex% + 20, ey% + 1), 44
PSET (ex% + 21, ey% + 1), 43
PSET (ex% + 22, ey% + 1), 42
PSET (ex% + 2, ey% + 2), 178
PSET (ex% + 3, ey% + 2), 106
PSET (ex% + 4, ey% + 2), 42
PSET (ex% + 5, ey% + 2), 43
PSET (ex% + 6, ey% + 2), 44
PSET (ex% + 7, ey% + 2), 43
PSET (ex% + 8, ey% + 2), 25
PSET (ex% + 9, ey% + 2), 25
PSET (ex% + 10, ey% + 2), 43
PSET (ex% + 11, ey% + 2), 44
PSET (ex% + 12, ey% + 2), 43
PSET (ex% + 13, ey% + 2), 21
PSET (ex% + 14, ey% + 2), 44
PSET (ex% + 15, ey% + 2), 43
PSET (ex% + 16, ey% + 2), 44
PSET (ex% + 17, ey% + 2), 44
PSET (ex% + 18, ey% + 2), 43
PSET (ex% + 19, ey% + 2), 43
PSET (ex% + 20, ey% + 2), 43
PSET (ex% + 21, ey% + 2), 44
PSET (ex% + 0, ey% + 3), 21
PSET (ex% + 1, ey% + 3), 22
PSET (ex% + 2, ey% + 3), 23
PSET (ex% + 3, ey% + 3), 23
PSET (ex% + 4, ey% + 3), 24
PSET (ex% + 5, ey% + 3), 43
PSET (ex% + 6, ey% + 3), 43
PSET (ex% + 7, ey% + 3), 24
PSET (ex% + 8, ey% + 3), 24
PSET (ex% + 9, ey% + 3), 41
PSET (ex% + 10, ey% + 3), 42
PSET (ex% + 11, ey% + 3), 42
PSET (ex% + 12, ey% + 3), 44
PSET (ex% + 14, ey% + 3), 24
PSET (ex% + 15, ey% + 3), 25
PSET (ex% + 16, ey% + 3), 44
PSET (ex% + 17, ey% + 3), 43
PSET (ex% + 18, ey% + 3), 44
PSET (ex% + 19, ey% + 3), 42
PSET (ex% + 20, ey% + 3), 44
PSET (ex% + 21, ey% + 3), 43
PSET (ex% + 22, ey% + 3), 41
PSET (ex% + 3, ey% + 4), 20
PSET (ex% + 4, ey% + 4), 22
PSET (ex% + 5, ey% + 4), 22
PSET (ex% + 6, ey% + 4), 20
PSET (ex% + 7, ey% + 4), 19
PSET (ex% + 10, ey% + 4), 41
PSET (ex% + 12, ey% + 4), 43
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 43
PSET (ex% + 15, ey% + 4), 44
PSET (ex% + 16, ey% + 4), 43
PSET (ex% + 17, ey% + 4), 42
PSET (ex% + 18, ey% + 4), 43
PSET (ex% + 19, ey% + 4), 44
PSET (ex% + 20, ey% + 4), 43
PSET (ex% + 12, ey% + 5), 43
PSET (ex% + 13, ey% + 5), 44
PSET (ex% + 14, ey% + 5), 44
PSET (ex% + 15, ey% + 5), 43
PSET (ex% + 16, ey% + 5), 44
PSET (ex% + 17, ey% + 5), 42
PSET (ex% + 18, ey% + 5), 42
PSET (ex% + 19, ey% + 5), 41
PSET (ex% + 21, ey% + 5), 42
PSET (ex% + 11, ey% + 6), 42
PSET (ex% + 12, ey% + 6), 41
PSET (ex% + 13, ey% + 6), 43
PSET (ex% + 14, ey% + 6), 44
PSET (ex% + 15, ey% + 6), 44
PSET (ex% + 16, ey% + 6), 42
PSET (ex% + 18, ey% + 6), 41
PSET (ex% + 10, ey% + 7), 19
PSET (ex% + 11, ey% + 7), 23
PSET (ex% + 12, ey% + 7), 43
PSET (ex% + 13, ey% + 7), 42
PSET (ex% + 14, ey% + 7), 24
PSET (ex% + 15, ey% + 7), 42
PSET (ex% + 16, ey% + 7), 43
PSET (ex% + 17, ey% + 7), 42
PSET (ex% + 9, ey% + 8), 19
PSET (ex% + 10, ey% + 8), 24
PSET (ex% + 11, ey% + 8), 44
PSET (ex% + 12, ey% + 8), 42
PSET (ex% + 13, ey% + 8), 25
PSET (ex% + 14, ey% + 8), 23
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 10, ey% + 9), 43
PSET (ex% + 11, ey% + 9), 42
PSET (ex% + 12, ey% + 9), 22
PSET (ex% + 13, ey% + 9), 21
END SUB

SUB xxf4
PSET (ex% + 18, ey% + -3), 42
PSET (ex% + 20, ey% + -3), 40
PSET (ex% + 11, ey% + -2), 41
PSET (ex% + 13, ey% + -2), 41
PSET (ex% + 16, ey% + -2), 42
PSET (ex% + 17, ey% + -2), 44
PSET (ex% + 18, ey% + -2), 43
PSET (ex% + 19, ey% + -2), 44
PSET (ex% + 20, ey% + -2), 42
PSET (ex% + 10, ey% + -1), 41
PSET (ex% + 11, ey% + -1), 42
PSET (ex% + 12, ey% + -1), 43
PSET (ex% + 14, ey% + -1), 44
PSET (ex% + 15, ey% + -1), 44
PSET (ex% + 16, ey% + -1), 44
PSET (ex% + 17, ey% + -1), 43
PSET (ex% + 18, ey% + -1), 44
PSET (ex% + 19, ey% + -1), 44
PSET (ex% + 21, ey% + -1), 43
PSET (ex% + 22, ey% + -1), 43
PSET (ex% + 6, ey% + 0), 40
PSET (ex% + 7, ey% + 0), 42
PSET (ex% + 8, ey% + 0), 178
PSET (ex% + 9, ey% + 0), 41
PSET (ex% + 10, ey% + 0), 42
PSET (ex% + 11, ey% + 0), 43
PSET (ex% + 12, ey% + 0), 43
PSET (ex% + 13, ey% + 0), 42
PSET (ex% + 14, ey% + 0), 24
PSET (ex% + 15, ey% + 0), 42
PSET (ex% + 16, ey% + 0), 44
PSET (ex% + 17, ey% + 0), 43
PSET (ex% + 18, ey% + 0), 43
PSET (ex% + 19, ey% + 0), 42
PSET (ex% + 20, ey% + 0), 42
PSET (ex% + 21, ey% + 0), 44
PSET (ex% + 22, ey% + 0), 43
PSET (ex% + 23, ey% + 0), 42
PSET (ex% + 4, ey% + 1), 41
PSET (ex% + 5, ey% + 1), 43
PSET (ex% + 6, ey% + 1), 43
PSET (ex% + 7, ey% + 1), 44
PSET (ex% + 8, ey% + 1), 43
PSET (ex% + 9, ey% + 1), 130
PSET (ex% + 10, ey% + 1), 43
PSET (ex% + 11, ey% + 1), 42
PSET (ex% + 12, ey% + 1), 44
PSET (ex% + 13, ey% + 1), 43
PSET (ex% + 14, ey% + 1), 44
PSET (ex% + 15, ey% + 1), 42
PSET (ex% + 16, ey% + 1), 43
PSET (ex% + 17, ey% + 1), 42
PSET (ex% + 18, ey% + 1), 43
PSET (ex% + 19, ey% + 1), 44
PSET (ex% + 20, ey% + 1), 44
PSET (ex% + 21, ey% + 1), 43
PSET (ex% + 22, ey% + 1), 43
PSET (ex% + 23, ey% + 1), 44
PSET (ex% + 2, ey% + 2), 178
PSET (ex% + 3, ey% + 2), 43
PSET (ex% + 4, ey% + 2), 42
PSET (ex% + 5, ey% + 2), 43
PSET (ex% + 6, ey% + 2), 44
PSET (ex% + 7, ey% + 2), 43
PSET (ex% + 8, ey% + 2), 25
PSET (ex% + 9, ey% + 2), 25
PSET (ex% + 10, ey% + 2), 43
PSET (ex% + 11, ey% + 2), 44
PSET (ex% + 12, ey% + 2), 43
PSET (ex% + 13, ey% + 2), 21
PSET (ex% + 14, ey% + 2), 42
PSET (ex% + 15, ey% + 2), 43
PSET (ex% + 16, ey% + 2), 41
PSET (ex% + 17, ey% + 2), 42
PSET (ex% + 18, ey% + 2), 42
PSET (ex% + 19, ey% + 2), 43
PSET (ex% + 20, ey% + 2), 43
PSET (ex% + 21, ey% + 2), 44
PSET (ex% + 0, ey% + 3), 21
PSET (ex% + 1, ey% + 3), 22
PSET (ex% + 2, ey% + 3), 41
PSET (ex% + 3, ey% + 3), 42
PSET (ex% + 4, ey% + 3), 41
PSET (ex% + 5, ey% + 3), 43
PSET (ex% + 6, ey% + 3), 43
PSET (ex% + 7, ey% + 3), 43
PSET (ex% + 8, ey% + 3), 44
PSET (ex% + 9, ey% + 3), 43
PSET (ex% + 10, ey% + 3), 44
PSET (ex% + 11, ey% + 3), 42
PSET (ex% + 12, ey% + 3), 44
PSET (ex% + 14, ey% + 3), 24
PSET (ex% + 15, ey% + 3), 25
PSET (ex% + 16, ey% + 3), 43
PSET (ex% + 17, ey% + 3), 41
PSET (ex% + 18, ey% + 3), 44
PSET (ex% + 19, ey% + 3), 42
PSET (ex% + 20, ey% + 3), 44
PSET (ex% + 21, ey% + 3), 43
PSET (ex% + 22, ey% + 3), 42
PSET (ex% + 3, ey% + 4), 20
PSET (ex% + 4, ey% + 4), 22
PSET (ex% + 5, ey% + 4), 42
PSET (ex% + 6, ey% + 4), 42
PSET (ex% + 7, ey% + 4), 19
PSET (ex% + 8, ey% + 4), 42
PSET (ex% + 9, ey% + 4), 43
PSET (ex% + 10, ey% + 4), 41
PSET (ex% + 12, ey% + 4), 43
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 43
PSET (ex% + 15, ey% + 4), 44
PSET (ex% + 16, ey% + 4), 43
PSET (ex% + 17, ey% + 4), 43
PSET (ex% + 18, ey% + 4), 43
PSET (ex% + 19, ey% + 4), 44
PSET (ex% + 20, ey% + 4), 43
PSET (ex% + 10, ey% + 5), 44
PSET (ex% + 12, ey% + 5), 43
PSET (ex% + 13, ey% + 5), 44
PSET (ex% + 14, ey% + 5), 44
PSET (ex% + 15, ey% + 5), 43
PSET (ex% + 16, ey% + 5), 44
PSET (ex% + 17, ey% + 5), 44
PSET (ex% + 18, ey% + 5), 43
PSET (ex% + 19, ey% + 5), 42
PSET (ex% + 21, ey% + 5), 42
PSET (ex% + 22, ey% + 5), 42
PSET (ex% + 11, ey% + 6), 42
PSET (ex% + 12, ey% + 6), 41
PSET (ex% + 13, ey% + 6), 43
PSET (ex% + 14, ey% + 6), 44
PSET (ex% + 15, ey% + 6), 44
PSET (ex% + 16, ey% + 6), 42
PSET (ex% + 18, ey% + 6), 43
PSET (ex% + 19, ey% + 6), 43
PSET (ex% + 10, ey% + 7), 43
PSET (ex% + 11, ey% + 7), 44
PSET (ex% + 12, ey% + 7), 43
PSET (ex% + 13, ey% + 7), 42
PSET (ex% + 14, ey% + 7), 24
PSET (ex% + 15, ey% + 7), 42
PSET (ex% + 16, ey% + 7), 43
PSET (ex% + 17, ey% + 7), 42
PSET (ex% + 18, ey% + 7), 43
PSET (ex% + 20, ey% + 7), 42
PSET (ex% + 21, ey% + 7), 41
PSET (ex% + 9, ey% + 8), 43
PSET (ex% + 10, ey% + 8), 23
PSET (ex% + 11, ey% + 8), 42
PSET (ex% + 12, ey% + 8), 44
PSET (ex% + 13, ey% + 8), 43
PSET (ex% + 14, ey% + 8), 43
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 18, ey% + 8), 41
PSET (ex% + 10, ey% + 9), 43
PSET (ex% + 11, ey% + 9), 43
PSET (ex% + 12, ey% + 9), 22
PSET (ex% + 13, ey% + 9), 43
PSET (ex% + 14, ey% + 9), 42
END SUB

SUB xxf5
PSET (ex% + 13, ey% + -3), 42
PSET (ex% + 14, ey% + -3), 41
PSET (ex% + 15, ey% + -3), 41
PSET (ex% + 18, ey% + -3), 41
PSET (ex% + 20, ey% + -3), 40
PSET (ex% + 23, ey% + -3), 41
PSET (ex% + 11, ey% + -2), 41
PSET (ex% + 13, ey% + -2), 41
PSET (ex% + 14, ey% + -2), 42
PSET (ex% + 16, ey% + -2), 42
PSET (ex% + 17, ey% + -2), 42
PSET (ex% + 18, ey% + -2), 43
PSET (ex% + 19, ey% + -2), 41
PSET (ex% + 20, ey% + -2), 42
PSET (ex% + 21, ey% + -2), 42
PSET (ex% + 22, ey% + -2), 41
PSET (ex% + 4, ey% + -1), 40
PSET (ex% + 9, ey% + -1), 41
PSET (ex% + 10, ey% + -1), 42
PSET (ex% + 11, ey% + -1), 42
PSET (ex% + 12, ey% + -1), 41
PSET (ex% + 14, ey% + -1), 44
PSET (ex% + 15, ey% + -1), 44
PSET (ex% + 16, ey% + -1), 44
PSET (ex% + 17, ey% + -1), 43
PSET (ex% + 18, ey% + -1), 44
PSET (ex% + 19, ey% + -1), 44
PSET (ex% + 21, ey% + -1), 43
PSET (ex% + 22, ey% + -1), 43
PSET (ex% + 24, ey% + -1), 41
PSET (ex% + 6, ey% + 0), 40
PSET (ex% + 7, ey% + 0), 42
PSET (ex% + 8, ey% + 0), 44
PSET (ex% + 9, ey% + 0), 41
PSET (ex% + 10, ey% + 0), 42
PSET (ex% + 11, ey% + 0), 43
PSET (ex% + 12, ey% + 0), 43
PSET (ex% + 13, ey% + 0), 42
PSET (ex% + 14, ey% + 0), 44
PSET (ex% + 15, ey% + 0), 42
PSET (ex% + 16, ey% + 0), 44
PSET (ex% + 17, ey% + 0), 43
PSET (ex% + 18, ey% + 0), 43
PSET (ex% + 19, ey% + 0), 42
PSET (ex% + 20, ey% + 0), 42
PSET (ex% + 21, ey% + 0), 44
PSET (ex% + 22, ey% + 0), 42
PSET (ex% + 23, ey% + 0), 42
PSET (ex% + 3, ey% + 1), 40
PSET (ex% + 4, ey% + 1), 41
PSET (ex% + 5, ey% + 1), 43
PSET (ex% + 6, ey% + 1), 43
PSET (ex% + 7, ey% + 1), 44
PSET (ex% + 8, ey% + 1), 43
PSET (ex% + 9, ey% + 1), 44
PSET (ex% + 10, ey% + 1), 43
PSET (ex% + 11, ey% + 1), 42
PSET (ex% + 12, ey% + 1), 44
PSET (ex% + 13, ey% + 1), 44
PSET (ex% + 14, ey% + 1), 44
PSET (ex% + 15, ey% + 1), 42
PSET (ex% + 16, ey% + 1), 43
PSET (ex% + 17, ey% + 1), 42
PSET (ex% + 18, ey% + 1), 43
PSET (ex% + 19, ey% + 1), 44
PSET (ex% + 20, ey% + 1), 44
PSET (ex% + 21, ey% + 1), 43
PSET (ex% + 22, ey% + 1), 43
PSET (ex% + 23, ey% + 1), 43
PSET (ex% + 24, ey% + 1), 42
PSET (ex% + 25, ey% + 1), 41
PSET (ex% + 1, ey% + 2), 41
PSET (ex% + 2, ey% + 2), 42
PSET (ex% + 3, ey% + 2), 43
PSET (ex% + 4, ey% + 2), 42
PSET (ex% + 5, ey% + 2), 43
PSET (ex% + 6, ey% + 2), 44
PSET (ex% + 7, ey% + 2), 43
PSET (ex% + 8, ey% + 2), 44
PSET (ex% + 9, ey% + 2), 44
PSET (ex% + 10, ey% + 2), 44
PSET (ex% + 11, ey% + 2), 44
PSET (ex% + 12, ey% + 2), 43
PSET (ex% + 13, ey% + 2), 44
PSET (ex% + 14, ey% + 2), 42
PSET (ex% + 15, ey% + 2), 42
PSET (ex% + 16, ey% + 2), 41
PSET (ex% + 17, ey% + 2), 42
PSET (ex% + 18, ey% + 2), 41
PSET (ex% + 19, ey% + 2), 43
PSET (ex% + 20, ey% + 2), 43
PSET (ex% + 21, ey% + 2), 44
PSET (ex% + 24, ey% + 2), 40
PSET (ex% + 0, ey% + 3), 41
PSET (ex% + 1, ey% + 3), 43
PSET (ex% + 2, ey% + 3), 43
PSET (ex% + 3, ey% + 3), 42
PSET (ex% + 4, ey% + 3), 41
PSET (ex% + 5, ey% + 3), 43
PSET (ex% + 6, ey% + 3), 43
PSET (ex% + 7, ey% + 3), 43
PSET (ex% + 8, ey% + 3), 44
PSET (ex% + 9, ey% + 3), 43
PSET (ex% + 10, ey% + 3), 44
PSET (ex% + 11, ey% + 3), 42
PSET (ex% + 12, ey% + 3), 44
PSET (ex% + 13, ey% + 3), 44
PSET (ex% + 14, ey% + 3), 44
PSET (ex% + 15, ey% + 3), 43
PSET (ex% + 16, ey% + 3), 42
PSET (ex% + 17, ey% + 3), 41
PSET (ex% + 18, ey% + 3), 44
PSET (ex% + 19, ey% + 3), 42
PSET (ex% + 20, ey% + 3), 44
PSET (ex% + 21, ey% + 3), 43
PSET (ex% + 22, ey% + 3), 42
PSET (ex% + 2, ey% + 4), 41
PSET (ex% + 3, ey% + 4), 43
PSET (ex% + 4, ey% + 4), 43
PSET (ex% + 5, ey% + 4), 42
PSET (ex% + 6, ey% + 4), 42
PSET (ex% + 7, ey% + 4), 44
PSET (ex% + 8, ey% + 4), 42
PSET (ex% + 9, ey% + 4), 43
PSET (ex% + 10, ey% + 4), 41
PSET (ex% + 12, ey% + 4), 43
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 43
PSET (ex% + 15, ey% + 4), 44
PSET (ex% + 16, ey% + 4), 43
PSET (ex% + 17, ey% + 4), 43
PSET (ex% + 18, ey% + 4), 43
PSET (ex% + 19, ey% + 4), 44
PSET (ex% + 20, ey% + 4), 43
PSET (ex% + 23, ey% + 4), 41
PSET (ex% + 3, ey% + 5), 42
PSET (ex% + 4, ey% + 5), 43
PSET (ex% + 6, ey% + 5), 41
PSET (ex% + 8, ey% + 5), 42
PSET (ex% + 9, ey% + 5), 43
PSET (ex% + 10, ey% + 5), 43
PSET (ex% + 11, ey% + 5), 44
PSET (ex% + 12, ey% + 5), 43
PSET (ex% + 13, ey% + 5), 44
PSET (ex% + 14, ey% + 5), 43
PSET (ex% + 15, ey% + 5), 43
PSET (ex% + 16, ey% + 5), 44
PSET (ex% + 17, ey% + 5), 44
PSET (ex% + 18, ey% + 5), 43
PSET (ex% + 19, ey% + 5), 42
PSET (ex% + 21, ey% + 5), 42
PSET (ex% + 22, ey% + 5), 42
PSET (ex% + 9, ey% + 6), 41
PSET (ex% + 11, ey% + 6), 42
PSET (ex% + 12, ey% + 6), 41
PSET (ex% + 13, ey% + 6), 43
PSET (ex% + 14, ey% + 6), 44
PSET (ex% + 15, ey% + 6), 44
PSET (ex% + 16, ey% + 6), 42
PSET (ex% + 18, ey% + 6), 43
PSET (ex% + 19, ey% + 6), 43
PSET (ex% + 23, ey% + 6), 41
PSET (ex% + 10, ey% + 7), 41
PSET (ex% + 11, ey% + 7), 43
PSET (ex% + 12, ey% + 7), 42
PSET (ex% + 13, ey% + 7), 42
PSET (ex% + 14, ey% + 7), 44
PSET (ex% + 15, ey% + 7), 42
PSET (ex% + 16, ey% + 7), 43
PSET (ex% + 17, ey% + 7), 42
PSET (ex% + 18, ey% + 7), 43
PSET (ex% + 20, ey% + 7), 42
PSET (ex% + 21, ey% + 7), 41
PSET (ex% + 9, ey% + 8), 41
PSET (ex% + 10, ey% + 8), 23
PSET (ex% + 11, ey% + 8), 42
PSET (ex% + 12, ey% + 8), 43
PSET (ex% + 13, ey% + 8), 43
PSET (ex% + 14, ey% + 8), 43
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 16, ey% + 8), 40
PSET (ex% + 18, ey% + 8), 41
PSET (ex% + 22, ey% + 8), 40
PSET (ex% + 10, ey% + 9), 40
PSET (ex% + 11, ey% + 9), 42
PSET (ex% + 12, ey% + 9), 22
PSET (ex% + 13, ey% + 9), 43
PSET (ex% + 14, ey% + 9), 42
PSET (ex% + 15, ey% + 9), 41
PSET (ex% + 13, ey% + 10), 40
END SUB

SUB xxf6
PSET (ex% + 13, ey% + -3), 42
PSET (ex% + 14, ey% + -3), 41
PSET (ex% + 15, ey% + -3), 41
PSET (ex% + 18, ey% + -3), 41
PSET (ex% + 21, ey% + -3), 40
PSET (ex% + 11, ey% + -2), 41
PSET (ex% + 13, ey% + -2), 41
PSET (ex% + 14, ey% + -2), 42
PSET (ex% + 16, ey% + -2), 42
PSET (ex% + 17, ey% + -2), 41
PSET (ex% + 18, ey% + -2), 42
PSET (ex% + 19, ey% + -2), 40
PSET (ex% + 21, ey% + -2), 42
PSET (ex% + 22, ey% + -2), 41
PSET (ex% + 24, ey% + -2), 41
PSET (ex% + 4, ey% + -1), 43
PSET (ex% + 9, ey% + -1), 41
PSET (ex% + 10, ey% + -1), 42
PSET (ex% + 11, ey% + -1), 42
PSET (ex% + 12, ey% + -1), 41
PSET (ex% + 14, ey% + -1), 40
PSET (ex% + 15, ey% + -1), 43
PSET (ex% + 16, ey% + -1), 43
PSET (ex% + 17, ey% + -1), 43
PSET (ex% + 18, ey% + -1), 43
PSET (ex% + 19, ey% + -1), 41
PSET (ex% + 21, ey% + -1), 43
PSET (ex% + 22, ey% + -1), 43
PSET (ex% + 5, ey% + 0), 41
PSET (ex% + 6, ey% + 0), 40
PSET (ex% + 7, ey% + 0), 42
PSET (ex% + 8, ey% + 0), 44
PSET (ex% + 9, ey% + 0), 41
PSET (ex% + 10, ey% + 0), 42
PSET (ex% + 11, ey% + 0), 43
PSET (ex% + 12, ey% + 0), 43
PSET (ex% + 13, ey% + 0), 42
PSET (ex% + 14, ey% + 0), 43
PSET (ex% + 15, ey% + 0), 42
PSET (ex% + 16, ey% + 0), 44
PSET (ex% + 17, ey% + 0), 42
PSET (ex% + 18, ey% + 0), 40
PSET (ex% + 19, ey% + 0), 42
PSET (ex% + 20, ey% + 0), 42
PSET (ex% + 21, ey% + 0), 44
PSET (ex% + 22, ey% + 0), 41
PSET (ex% + 23, ey% + 0), 42
PSET (ex% + 3, ey% + 1), 41
PSET (ex% + 4, ey% + 1), 43
PSET (ex% + 5, ey% + 1), 42
PSET (ex% + 6, ey% + 1), 43
PSET (ex% + 7, ey% + 1), 44
PSET (ex% + 8, ey% + 1), 43
PSET (ex% + 9, ey% + 1), 43
PSET (ex% + 10, ey% + 1), 43
PSET (ex% + 11, ey% + 1), 42
PSET (ex% + 12, ey% + 1), 40
PSET (ex% + 13, ey% + 1), 43
PSET (ex% + 14, ey% + 1), 44
PSET (ex% + 15, ey% + 1), 43
PSET (ex% + 16, ey% + 1), 41
PSET (ex% + 17, ey% + 1), 42
PSET (ex% + 19, ey% + 1), 41
PSET (ex% + 20, ey% + 1), 43
PSET (ex% + 21, ey% + 1), 42
PSET (ex% + 22, ey% + 1), 40
PSET (ex% + 24, ey% + 1), 40
PSET (ex% + 1, ey% + 2), 41
PSET (ex% + 2, ey% + 2), 42
PSET (ex% + 3, ey% + 2), 42
PSET (ex% + 4, ey% + 2), 41
PSET (ex% + 6, ey% + 2), 41
PSET (ex% + 7, ey% + 2), 43
PSET (ex% + 8, ey% + 2), 44
PSET (ex% + 9, ey% + 2), 42
PSET (ex% + 10, ey% + 2), 41
PSET (ex% + 11, ey% + 2), 41
PSET (ex% + 13, ey% + 2), 40
PSET (ex% + 14, ey% + 2), 42
PSET (ex% + 15, ey% + 2), 41
PSET (ex% + 16, ey% + 2), 41
PSET (ex% + 19, ey% + 2), 40
PSET (ex% + 20, ey% + 2), 42
PSET (ex% + 21, ey% + 2), 44
PSET (ex% + 0, ey% + 3), 41
PSET (ex% + 1, ey% + 3), 43
PSET (ex% + 2, ey% + 3), 43
PSET (ex% + 3, ey% + 3), 41
PSET (ex% + 6, ey% + 3), 40
PSET (ex% + 7, ey% + 3), 42
PSET (ex% + 8, ey% + 3), 44
PSET (ex% + 9, ey% + 3), 43
PSET (ex% + 10, ey% + 3), 44
PSET (ex% + 11, ey% + 3), 42
PSET (ex% + 12, ey% + 3), 41
PSET (ex% + 13, ey% + 3), 41
PSET (ex% + 14, ey% + 3), 44
PSET (ex% + 15, ey% + 3), 43
PSET (ex% + 16, ey% + 3), 42
PSET (ex% + 17, ey% + 3), 41
PSET (ex% + 18, ey% + 3), 42
PSET (ex% + 19, ey% + 3), 41
PSET (ex% + 20, ey% + 3), 44
PSET (ex% + 21, ey% + 3), 40
PSET (ex% + 22, ey% + 3), 42
PSET (ex% + 2, ey% + 4), 41
PSET (ex% + 3, ey% + 4), 42
PSET (ex% + 4, ey% + 4), 41
PSET (ex% + 5, ey% + 4), 42
PSET (ex% + 6, ey% + 4), 41
PSET (ex% + 7, ey% + 4), 44
PSET (ex% + 8, ey% + 4), 42
PSET (ex% + 9, ey% + 4), 43
PSET (ex% + 10, ey% + 4), 41
PSET (ex% + 12, ey% + 4), 42
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 43
PSET (ex% + 15, ey% + 4), 44
PSET (ex% + 16, ey% + 4), 42
PSET (ex% + 17, ey% + 4), 42
PSET (ex% + 18, ey% + 4), 42
PSET (ex% + 19, ey% + 4), 44
PSET (ex% + 20, ey% + 4), 41
PSET (ex% + 24, ey% + 4), 42
PSET (ex% + 25, ey% + 4), 41
PSET (ex% + 3, ey% + 5), 42
PSET (ex% + 4, ey% + 5), 43
PSET (ex% + 6, ey% + 5), 41
PSET (ex% + 8, ey% + 5), 42
PSET (ex% + 9, ey% + 5), 43
PSET (ex% + 10, ey% + 5), 43
PSET (ex% + 11, ey% + 5), 44
PSET (ex% + 12, ey% + 5), 43
PSET (ex% + 13, ey% + 5), 44
PSET (ex% + 14, ey% + 5), 43
PSET (ex% + 15, ey% + 5), 43
PSET (ex% + 16, ey% + 5), 44
PSET (ex% + 17, ey% + 5), 41
PSET (ex% + 18, ey% + 5), 43
PSET (ex% + 19, ey% + 5), 41
PSET (ex% + 9, ey% + 6), 41
PSET (ex% + 11, ey% + 6), 42
PSET (ex% + 12, ey% + 6), 41
PSET (ex% + 13, ey% + 6), 43
PSET (ex% + 14, ey% + 6), 44
PSET (ex% + 15, ey% + 6), 44
PSET (ex% + 16, ey% + 6), 42
PSET (ex% + 18, ey% + 6), 41
PSET (ex% + 19, ey% + 6), 42
PSET (ex% + 23, ey% + 6), 41
PSET (ex% + 24, ey% + 6), 42
PSET (ex% + 10, ey% + 7), 41
PSET (ex% + 11, ey% + 7), 43
PSET (ex% + 12, ey% + 7), 42
PSET (ex% + 13, ey% + 7), 42
PSET (ex% + 14, ey% + 7), 44
PSET (ex% + 15, ey% + 7), 42
PSET (ex% + 16, ey% + 7), 43
PSET (ex% + 17, ey% + 7), 42
PSET (ex% + 18, ey% + 7), 43
PSET (ex% + 9, ey% + 8), 41
PSET (ex% + 10, ey% + 8), 44
PSET (ex% + 11, ey% + 8), 43
PSET (ex% + 12, ey% + 8), 44
PSET (ex% + 13, ey% + 8), 43
PSET (ex% + 14, ey% + 8), 43
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 16, ey% + 8), 40
PSET (ex% + 18, ey% + 8), 41
PSET (ex% + 22, ey% + 8), 40
PSET (ex% + 23, ey% + 8), 40
PSET (ex% + 10, ey% + 9), 40
PSET (ex% + 11, ey% + 9), 42
PSET (ex% + 12, ey% + 9), 43
PSET (ex% + 13, ey% + 9), 43
PSET (ex% + 14, ey% + 9), 42
PSET (ex% + 15, ey% + 9), 41
PSET (ex% + 11, ey% + 10), 40
PSET (ex% + 12, ey% + 10), 42
PSET (ex% + 13, ey% + 10), 40
END SUB

SUB xxf7
PSET (ex% + 14, ey% + -3), 39
PSET (ex% + 15, ey% + -3), 41
PSET (ex% + 18, ey% + -3), 41
PSET (ex% + 11, ey% + -2), 41
PSET (ex% + 13, ey% + -2), 41
PSET (ex% + 14, ey% + -2), 42
PSET (ex% + 16, ey% + -2), 42
PSET (ex% + 17, ey% + -2), 41
PSET (ex% + 18, ey% + -2), 42
PSET (ex% + 19, ey% + -2), 40
PSET (ex% + 21, ey% + -2), 40
PSET (ex% + 25, ey% + -2), 41
PSET (ex% + 4, ey% + -1), 43
PSET (ex% + 9, ey% + -1), 41
PSET (ex% + 10, ey% + -1), 42
PSET (ex% + 11, ey% + -1), 42
PSET (ex% + 12, ey% + -1), 41
PSET (ex% + 14, ey% + -1), 40
PSET (ex% + 15, ey% + -1), 43
PSET (ex% + 16, ey% + -1), 43
PSET (ex% + 17, ey% + -1), 43
PSET (ex% + 18, ey% + -1), 42
PSET (ex% + 19, ey% + -1), 41
PSET (ex% + 21, ey% + -1), 41
PSET (ex% + 22, ey% + -1), 40
PSET (ex% + 5, ey% + 0), 41
PSET (ex% + 6, ey% + 0), 40
PSET (ex% + 7, ey% + 0), 42
PSET (ex% + 8, ey% + 0), 42
PSET (ex% + 9, ey% + 0), 41
PSET (ex% + 10, ey% + 0), 42
PSET (ex% + 11, ey% + 0), 43
PSET (ex% + 12, ey% + 0), 42
PSET (ex% + 13, ey% + 0), 41
PSET (ex% + 14, ey% + 0), 43
PSET (ex% + 15, ey% + 0), 42
PSET (ex% + 16, ey% + 0), 44
PSET (ex% + 17, ey% + 0), 42
PSET (ex% + 19, ey% + 0), 40
PSET (ex% + 20, ey% + 0), 42
PSET (ex% + 22, ey% + 0), 43
PSET (ex% + 23, ey% + 0), 42
PSET (ex% + 3, ey% + 1), 41
PSET (ex% + 4, ey% + 1), 43
PSET (ex% + 5, ey% + 1), 42
PSET (ex% + 6, ey% + 1), 43
PSET (ex% + 7, ey% + 1), 42
PSET (ex% + 8, ey% + 1), 43
PSET (ex% + 9, ey% + 1), 42
PSET (ex% + 10, ey% + 1), 41
PSET (ex% + 11, ey% + 1), 40
PSET (ex% + 14, ey% + 1), 40
PSET (ex% + 15, ey% + 1), 43
PSET (ex% + 16, ey% + 1), 41
PSET (ex% + 20, ey% + 1), 42
PSET (ex% + 21, ey% + 1), 41
PSET (ex% + 22, ey% + 1), 40
PSET (ex% + 1, ey% + 2), 41
PSET (ex% + 2, ey% + 2), 42
PSET (ex% + 3, ey% + 2), 42
PSET (ex% + 6, ey% + 2), 41
PSET (ex% + 7, ey% + 2), 42
PSET (ex% + 8, ey% + 2), 41
PSET (ex% + 14, ey% + 2), 42
PSET (ex% + 15, ey% + 2), 41
PSET (ex% + 20, ey% + 2), 42
PSET (ex% + 21, ey% + 2), 44
PSET (ex% + 0, ey% + 3), 41
PSET (ex% + 1, ey% + 3), 43
PSET (ex% + 2, ey% + 3), 43
PSET (ex% + 8, ey% + 3), 42
PSET (ex% + 9, ey% + 3), 41
PSET (ex% + 13, ey% + 3), 41
PSET (ex% + 14, ey% + 3), 42
PSET (ex% + 15, ey% + 3), 43
PSET (ex% + 16, ey% + 3), 42
PSET (ex% + 17, ey% + 3), 41
PSET (ex% + 19, ey% + 3), 41
PSET (ex% + 20, ey% + 3), 44
PSET (ex% + 21, ey% + 3), 40
PSET (ex% + 22, ey% + 3), 42
PSET (ex% + 2, ey% + 4), 41
PSET (ex% + 3, ey% + 4), 42
PSET (ex% + 5, ey% + 4), 42
PSET (ex% + 6, ey% + 4), 41
PSET (ex% + 7, ey% + 4), 42
PSET (ex% + 8, ey% + 4), 42
PSET (ex% + 9, ey% + 4), 42
PSET (ex% + 10, ey% + 4), 41
PSET (ex% + 12, ey% + 4), 42
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 43
PSET (ex% + 15, ey% + 4), 41
PSET (ex% + 16, ey% + 4), 42
PSET (ex% + 17, ey% + 4), 42
PSET (ex% + 18, ey% + 4), 42
PSET (ex% + 19, ey% + 4), 44
PSET (ex% + 20, ey% + 4), 41
PSET (ex% + 3, ey% + 5), 42
PSET (ex% + 4, ey% + 5), 43
PSET (ex% + 6, ey% + 5), 41
PSET (ex% + 8, ey% + 5), 42
PSET (ex% + 9, ey% + 5), 43
PSET (ex% + 10, ey% + 5), 42
PSET (ex% + 11, ey% + 5), 41
PSET (ex% + 12, ey% + 5), 42
PSET (ex% + 13, ey% + 5), 43
PSET (ex% + 14, ey% + 5), 43
PSET (ex% + 16, ey% + 5), 40
PSET (ex% + 18, ey% + 5), 43
PSET (ex% + 19, ey% + 5), 41
PSET (ex% + 9, ey% + 6), 41
PSET (ex% + 11, ey% + 6), 42
PSET (ex% + 12, ey% + 6), 41
PSET (ex% + 13, ey% + 6), 43
PSET (ex% + 14, ey% + 6), 42
PSET (ex% + 15, ey% + 6), 42
PSET (ex% + 16, ey% + 6), 42
PSET (ex% + 18, ey% + 6), 41
PSET (ex% + 19, ey% + 6), 42
PSET (ex% + 10, ey% + 7), 41
PSET (ex% + 11, ey% + 7), 43
PSET (ex% + 12, ey% + 7), 42
PSET (ex% + 13, ey% + 7), 42
PSET (ex% + 14, ey% + 7), 44
PSET (ex% + 15, ey% + 7), 42
PSET (ex% + 16, ey% + 7), 43
PSET (ex% + 17, ey% + 7), 42
PSET (ex% + 18, ey% + 7), 43
PSET (ex% + 24, ey% + 7), 40
PSET (ex% + 9, ey% + 8), 41
PSET (ex% + 10, ey% + 8), 44
PSET (ex% + 11, ey% + 8), 43
PSET (ex% + 12, ey% + 8), 44
PSET (ex% + 13, ey% + 8), 43
PSET (ex% + 14, ey% + 8), 43
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 16, ey% + 8), 40
PSET (ex% + 18, ey% + 8), 41
PSET (ex% + 10, ey% + 9), 40
PSET (ex% + 11, ey% + 9), 42
PSET (ex% + 12, ey% + 9), 43
PSET (ex% + 13, ey% + 9), 43
PSET (ex% + 14, ey% + 9), 42
PSET (ex% + 15, ey% + 9), 41
PSET (ex% + 11, ey% + 10), 40
PSET (ex% + 12, ey% + 10), 42
PSET (ex% + 13, ey% + 10), 40
END SUB

SUB xxf8
PSET (ex% + 15, ey% + -3), 41
PSET (ex% + 18, ey% + -3), 41
PSET (ex% + 13, ey% + -2), 41
PSET (ex% + 17, ey% + -2), 41
PSET (ex% + 18, ey% + -2), 42
PSET (ex% + 19, ey% + -2), 40
PSET (ex% + 21, ey% + -2), 40
PSET (ex% + 4, ey% + -1), 42
PSET (ex% + 9, ey% + -1), 41
PSET (ex% + 10, ey% + -1), 42
PSET (ex% + 11, ey% + -1), 42
PSET (ex% + 12, ey% + -1), 41
PSET (ex% + 15, ey% + -1), 40
PSET (ex% + 16, ey% + -1), 42
PSET (ex% + 17, ey% + -1), 42
PSET (ex% + 18, ey% + -1), 42
PSET (ex% + 22, ey% + -1), 40
PSET (ex% + 7, ey% + 0), 40
PSET (ex% + 8, ey% + 0), 42
PSET (ex% + 9, ey% + 0), 41
PSET (ex% + 10, ey% + 0), 41
PSET (ex% + 12, ey% + 0), 41
PSET (ex% + 13, ey% + 0), 41
PSET (ex% + 14, ey% + 0), 43
PSET (ex% + 15, ey% + 0), 41
PSET (ex% + 16, ey% + 0), 44
PSET (ex% + 17, ey% + 0), 42
PSET (ex% + 20, ey% + 0), 42
PSET (ex% + 22, ey% + 0), 42
PSET (ex% + 23, ey% + 0), 40
PSET (ex% + 4, ey% + 1), 41
PSET (ex% + 6, ey% + 1), 40
PSET (ex% + 7, ey% + 1), 41
PSET (ex% + 8, ey% + 1), 41
PSET (ex% + 9, ey% + 1), 42
PSET (ex% + 14, ey% + 1), 40
PSET (ex% + 15, ey% + 1), 43
PSET (ex% + 16, ey% + 1), 41
PSET (ex% + 21, ey% + 1), 41
PSET (ex% + 1, ey% + 2), 40
PSET (ex% + 7, ey% + 2), 41
PSET (ex% + 14, ey% + 2), 42
PSET (ex% + 15, ey% + 2), 41
PSET (ex% + 20, ey% + 2), 42
PSET (ex% + 21, ey% + 2), 44
PSET (ex% + 0, ey% + 3), 41
PSET (ex% + 1, ey% + 3), 42
PSET (ex% + 8, ey% + 3), 42
PSET (ex% + 9, ey% + 3), 41
PSET (ex% + 13, ey% + 3), 41
PSET (ex% + 14, ey% + 3), 41
PSET (ex% + 15, ey% + 3), 41
PSET (ex% + 16, ey% + 3), 42
PSET (ex% + 17, ey% + 3), 41
PSET (ex% + 19, ey% + 3), 41
PSET (ex% + 20, ey% + 3), 44
PSET (ex% + 21, ey% + 3), 40
PSET (ex% + 22, ey% + 3), 42
PSET (ex% + 3, ey% + 4), 42
PSET (ex% + 7, ey% + 4), 42
PSET (ex% + 8, ey% + 4), 42
PSET (ex% + 9, ey% + 4), 42
PSET (ex% + 10, ey% + 4), 41
PSET (ex% + 12, ey% + 4), 42
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 42
PSET (ex% + 17, ey% + 4), 42
PSET (ex% + 18, ey% + 4), 42
PSET (ex% + 19, ey% + 4), 42
PSET (ex% + 20, ey% + 4), 41
PSET (ex% + 4, ey% + 5), 43
PSET (ex% + 6, ey% + 5), 41
PSET (ex% + 8, ey% + 5), 42
PSET (ex% + 9, ey% + 5), 43
PSET (ex% + 10, ey% + 5), 42
PSET (ex% + 11, ey% + 5), 41
PSET (ex% + 12, ey% + 5), 42
PSET (ex% + 13, ey% + 5), 40
PSET (ex% + 18, ey% + 5), 43
PSET (ex% + 19, ey% + 5), 41
PSET (ex% + 9, ey% + 6), 41
PSET (ex% + 15, ey% + 6), 42
PSET (ex% + 18, ey% + 6), 41
PSET (ex% + 19, ey% + 6), 42
PSET (ex% + 12, ey% + 7), 41
PSET (ex% + 13, ey% + 7), 41
PSET (ex% + 14, ey% + 7), 41
PSET (ex% + 15, ey% + 7), 42
PSET (ex% + 16, ey% + 7), 43
PSET (ex% + 17, ey% + 7), 42
PSET (ex% + 11, ey% + 8), 41
PSET (ex% + 12, ey% + 8), 43
PSET (ex% + 13, ey% + 8), 43
PSET (ex% + 14, ey% + 8), 43
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 16, ey% + 8), 40
PSET (ex% + 10, ey% + 9), 40
PSET (ex% + 11, ey% + 9), 42
PSET (ex% + 12, ey% + 9), 43
PSET (ex% + 13, ey% + 9), 44
PSET (ex% + 14, ey% + 9), 42
PSET (ex% + 15, ey% + 9), 41
PSET (ex% + 11, ey% + 10), 40
PSET (ex% + 12, ey% + 10), 42
PSET (ex% + 13, ey% + 10), 40
END SUB

SUB xxf9
PSET (ex% + 16, ey% + -3), 40
PSET (ex% + 13, ey% + -2), 41
PSET (ex% + 18, ey% + -2), 42
PSET (ex% + 9, ey% + -1), 41
PSET (ex% + 10, ey% + -1), 42
PSET (ex% + 11, ey% + -1), 42
PSET (ex% + 12, ey% + -1), 41
PSET (ex% + 15, ey% + -1), 40
PSET (ex% + 16, ey% + -1), 42
PSET (ex% + 17, ey% + -1), 42
PSET (ex% + 18, ey% + -1), 42
PSET (ex% + 8, ey% + 0), 42
PSET (ex% + 12, ey% + 0), 41
PSET (ex% + 13, ey% + 0), 41
PSET (ex% + 14, ey% + 0), 43
PSET (ex% + 15, ey% + 0), 41
PSET (ex% + 16, ey% + 0), 44
PSET (ex% + 17, ey% + 0), 42
PSET (ex% + 22, ey% + 0), 42
PSET (ex% + 8, ey% + 1), 40
PSET (ex% + 9, ey% + 1), 42
PSET (ex% + 14, ey% + 1), 40
PSET (ex% + 15, ey% + 1), 43
PSET (ex% + 16, ey% + 1), 41
PSET (ex% + 14, ey% + 2), 42
PSET (ex% + 15, ey% + 2), 41
PSET (ex% + 20, ey% + 2), 40
PSET (ex% + 21, ey% + 2), 41
PSET (ex% + 13, ey% + 3), 41
PSET (ex% + 14, ey% + 3), 41
PSET (ex% + 15, ey% + 3), 42
PSET (ex% + 16, ey% + 3), 40
PSET (ex% + 19, ey% + 3), 41
PSET (ex% + 20, ey% + 3), 42
PSET (ex% + 21, ey% + 3), 40
PSET (ex% + 22, ey% + 3), 42
PSET (ex% + 7, ey% + 4), 41
PSET (ex% + 8, ey% + 4), 40
PSET (ex% + 12, ey% + 4), 42
PSET (ex% + 13, ey% + 4), 42
PSET (ex% + 14, ey% + 4), 40
PSET (ex% + 17, ey% + 4), 42
PSET (ex% + 18, ey% + 4), 42
PSET (ex% + 19, ey% + 4), 42
PSET (ex% + 20, ey% + 4), 41
PSET (ex% + 8, ey% + 5), 41
PSET (ex% + 9, ey% + 5), 42
PSET (ex% + 10, ey% + 5), 42
PSET (ex% + 11, ey% + 5), 41
PSET (ex% + 12, ey% + 5), 41
PSET (ex% + 18, ey% + 5), 41
PSET (ex% + 19, ey% + 5), 41
PSET (ex% + 9, ey% + 6), 41
PSET (ex% + 15, ey% + 6), 42
PSET (ex% + 18, ey% + 6), 41
PSET (ex% + 19, ey% + 6), 42
PSET (ex% + 12, ey% + 7), 41
PSET (ex% + 14, ey% + 7), 41
PSET (ex% + 15, ey% + 7), 42
PSET (ex% + 16, ey% + 7), 43
PSET (ex% + 17, ey% + 7), 42
PSET (ex% + 11, ey% + 8), 41
PSET (ex% + 12, ey% + 8), 42
PSET (ex% + 13, ey% + 8), 42
PSET (ex% + 14, ey% + 8), 43
PSET (ex% + 15, ey% + 8), 41
PSET (ex% + 11, ey% + 9), 40
PSET (ex% + 12, ey% + 9), 43
PSET (ex% + 13, ey% + 9), 41
PSET (ex% + 14, ey% + 9), 42
PSET (ex% + 12, ey% + 10), 40
END SUB

SUB z
PSET STEP(3, -4), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-1, 1), cf%

PSET STEP(-1, 1), cf%

PSET STEP(-1, 1), cf%

PSET STEP(-1, 1), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
END SUB

SUB z0
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
END SUB

SUB z1
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
END SUB

SUB z2
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
END SUB

SUB z3
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
END SUB

SUB z4
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
END SUB

SUB z5
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
END SUB

SUB z6
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
END SUB

SUB z7
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
END SUB

SUB z8
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
END SUB

SUB z9
PSET STEP(1, -4), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cb%
PSET STEP(1, 0), cf%

PSET STEP(-4, 1), cb%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cf%
PSET STEP(1, 0), cb%
END SUB

'Print number on the screen
SUB prnumber (num%, stl%)

tsd% = INT(ABS(num%) / 1000)
hnd% = INT((ABS(num%) - tsd% * 1000) / 100)
znr% = INT((ABS(num%) - tsd% * 1000 - hnd% * 100) / 10)
enr% = ABS(num%) - tsd% * 1000 - hnd% * 100 - znr% * 10

IF tsd% = 0 AND hnd% = 0 AND znr% = 0 THEN znr% = -1
IF tsd% = 0 AND hnd% = 0 THEN hnd% = -1
IF tsd% = 0 THEN tsd% = -1

IF tsd% <= 0 AND hnd% <= 0 AND znr% <= 0 AND num% < 0 THEN znr% = -2
IF tsd% <= 0 AND hnd% <= 0 AND znr% >= 0 AND num% < 0 THEN hnd% = -2
IF tsd% <= 0 AND hnd% >= 0 AND znr% >= 0 AND num% < 0 THEN tsd% = -2
IF tsd% >= 0 AND hnd% >= 0 AND znr% >= 0 AND num% < 0 THEN minus ELSE empty2

IF stl% = 4 THEN
SELECT CASE tsd%
CASE -2: minus
CASE -1: empty2
CASE 0: z0
CASE 1: z1
CASE 2: z2
CASE 3: z3
CASE 4: z4
CASE 5: z5
CASE 6: z6
CASE 7: z7
CASE 8: z8
CASE 9: z9
END SELECT
END IF

IF stl% >= 3 THEN
SELECT CASE hnd%
CASE -2: minus
CASE -1: empty2
CASE 0: z0
CASE 1: z1
CASE 2: z2
CASE 3: z3
CASE 4: z4
CASE 5: z5
CASE 6: z6
CASE 7: z7
CASE 8: z8
CASE 9: z9
END SELECT
END IF

IF stl% >= 2 THEN
SELECT CASE znr%
CASE -2: minus
CASE -1: empty2
CASE 0: z0
CASE 1: z1
CASE 2: z2
CASE 3: z3
CASE 4: z4
CASE 5: z5
CASE 6: z6
CASE 7: z7
CASE 8: z8
CASE 9: z9
END SELECT
END IF

SELECT CASE enr%
CASE 0: z0
CASE 1: z1
CASE 2: z2
CASE 3: z3
CASE 4: z4
CASE 5: z5
CASE 6: z6
CASE 7: z7
CASE 8: z8
CASE 9: z9
END SELECT

END SUB

