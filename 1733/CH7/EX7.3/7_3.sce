//7.3
clc;
V=200;
I=4*10^-3;
R=V/I;
printf("Resistance=%.0f ohm", R)
Vc=0;
RL=V/10;
tq=15*10^-6;
C=tq/(RL *log(2))*10^6;
printf("\nCapacitance=%.3f uF", C)