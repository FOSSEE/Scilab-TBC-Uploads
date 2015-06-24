clc
//initialization of varaibles
disp("From psychrometric charts,")
e=0.7
phi=0.5
g1=0.0131 //lb water/lb dry air
h1=32.36 //B/lb of dry air
g3=0.0073
h3=24.26
pg=0.3390
T3=528 //R
V3=1000
Rw=85.8
//calculations
pw3=phi*pg
ww3=pw3*144*V3/(Rw*T3)
wa3=ww3/g3
wa1=phi*wa3
wa2=phi*wa3
ww1=g1*wa1
ww2=ww3-ww1
g2=ww2/wa2
h2=(wa3*h3-wa1*h1)/wa2
tdb=61 //F
//results
printf("Air supplied = %.3f lb/min",ww2)
printf("\n temperature = %d F",tdb)
printf("\n Humidity = %.5f lb water/lb dry air",g2)
