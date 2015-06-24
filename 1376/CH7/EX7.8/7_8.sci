//7.8
clc;
r1=250;
r4=1200;
r2=10^6;
C4=4*10^-5;
r3=r1*r4/r2;
printf("Resistance=%.2f ohm",r3)
C3=r2*C4/r1;
printf("\nCapacitance=%.2f uF",C3)