start:
 CLS
 LOCATE 2,20:PRINT "              KEMI"
 LOCATE 3,20:PRINT "              ˉˉˉˉ"
 LOCATE 5,20:PRINT "        1. Pascal"
 LOCATE 6,20:PRINT "        2. Volym"
 LOCATE 7,20:PRINT "        3. Substansmänd"
 LOCATE 8,20:PRINT "        4. Temperatur"
 LOCATE 10,20:PRINT "        5. Molmassa"
 LOCATE 11,20:PRINT "        6. Substansmängd"
 LOCATE 13,20:PRINT "        7. Grundämnens namn, tecken och atommassa"
 LOCATE 17,20:PRINT "           VAL (1-7)"
evig:
 a$=INKEY$
 IF a$="1"THEN pascal
 IF a$="2"THEN volym
 IF a$="3"THEN substm
 IF a$="4"THEN temp
 IF a$="5"THEN molmassa
 IF a$="6"THEN subii
 IF a$="7"THEN tabell
 GOTO evig

pascal:
 CLS
 LOCATE 2,4: INPUT "Substansmängd(mol): ",n
 LOCATE 3,4: INPUT "Temperatur(°K); ",T
 LOCATE 4,4: INPUT "Volym(m³): ",V
 p=n*8,314*T/V
 LOCATE 6,6:PRINT "Trycket är ";p;"Pa."
pascalevig:
 b$=INKEY$
 IF b$="□"THEN start
 GOTO pascalevig

substm:
 CLS
 LOCATE 2,4: INPUT "Pascal(pa): ",p
 LOCATE 3,4: INPUT "Temperatur(°K); ",T
 LOCATE 4,4: INPUT "Volym(m³): ",V
 n=p*V/8.314/T
 LOCATE 6,6:PRINT "Substansmängden är ";n;"mol."
subevig:
 b$=INKEY$
 IF b$="□"THEN start
 GOTO subevig

temp:
 CLS
 LOCATE 2,4: INPUT "Substansmängd(mol): ",n
 LOCATE 3,4: INPUT "Pascal(pa): ",p
 LOCATE 4,4: INPUT "Volym(m³): ",V
 T=p*V/n/8.314
 c=T-273
 LOCATE 6,6:PRINT "Temperaturen är ";T;"°K."
 LOCATE 6,6:PRINT "          eller ";c;"°C."
tempevig:
 b$=INKEY$
 IF b$="□"THEN start
 GOTO tempevig

volym:
 CLS
 LOCATE 2,4: INPUT "Substansmängd(mol): ",n
 LOCATE 3,4: INPUT "Temperatur(K); ",T
 LOCATE 4,4: INPUT "Pascal(pa): ",p
 V=n*8.314*T/p
 LOCATE 6,6:PRINT "Volymen är ";T;"m³."
volymevig:
 b$=INKEY$
 IF b$="□"THEN start
 GOTO volymevig

molmassa:
 CLS
 LOCATE 2,4: INPUT "Vikt(g): ",g
 LOCATE 3,4: INPUT "Substansmängd(mol): ",n
 M=g/n
 LOCATE 6,6:PRINT "Molmassan är ";M;"g/mol."
molmassaevig:
 b$=INKEY$
 IF b$="□"THEN start
 GOTO molmassaevig


