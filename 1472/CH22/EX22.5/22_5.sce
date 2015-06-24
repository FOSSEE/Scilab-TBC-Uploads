clc
//initialization of varaibles
mO=1.33
CO=0.155
mC=3.67
CC=0.165
t2=1000 //F
tb=68 //F
t1=300 //F
mC2=1
CC2=0.17
mO2=4
CO2=0.155
H=-14087 //B/lb
//calculations
dE2=mO*CO*(t2-tb) + mC*CC*(t2-tb)
dE1=mO2*CO2*(tb-t1) + mC2*CC2*(tb-t1)
Q=dE2+dE1+H
//results
printf("Heat transfer from the system = %d Btu",Q)
