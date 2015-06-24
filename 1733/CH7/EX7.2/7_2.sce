//7.2
clc;
Rth=50*15/(50+15);
I=20*10^-3;
Vzb=14.8;
Vt=0.85;
V=Rth*I;// Voltage drop across the thevenin's resistance
Vi=V+Vzb+Vt;
printf("The value of input voltage Vi=%.3f V",Vi)
