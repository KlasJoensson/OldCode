DIM a$(30,5)
DIM a(30,5)
SCREEN 1,640,200,4,2
WINDOW 2,"         MENY:",(10,10)-(250,50),8,1
WINDOW 3,"...",(10,60)-(250,100),8,1
meny:
 WINDOW OUTPUT 2
 CLS
 PRINT "1.Registrera"
 PRINT "2.Information"
 PRINT "3.Totalt"
 INPUT "nr.:",n

IF n=1 THEN reg.
IF n=2 THEN info.
IF n=3 THEN tot.

reg.:
 CLS
 WINDOW OUTPUT 3
 LET a=a+1
 INPUT "Namn:",a$(a,1)
 INPUT "antal frallor:",b(a,2)
 f=f+b(a,2)
 INPUT "antal kroner:",b(a,3)
 k=k+b(a,3)
 CLS
 GOTO meny

info.:
 WINDOW OUTPUT 3
 INPUT "nr.:",a
 CLS
 PRINT a$(a,a)
 PRINT b(a,2);" frallor."
 PRINT b(a,3);" kr."
INPUT "tryck 1", c
IF c=1 THEN CLS
GOTO meny

tot.:
 WINDOW OUTPUT 3
 PRINT f;" frallor."
 PRINT k;" kr."
INPUT "tryck 1", c
IF c=1 THEN CLS
GOTO meny



