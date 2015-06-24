clear;
clc;
V=10;Rl=10;Z1=5;Z2=5;
Zab=1/((1/Z1)+(1/Z2));
I1=V/(Z1+Z2);
Voc=I1*Z1;
I=Voc/(Zab+Rl);
printf("Current in the 10 ohm resistor = %d mA",I*(10^3));
