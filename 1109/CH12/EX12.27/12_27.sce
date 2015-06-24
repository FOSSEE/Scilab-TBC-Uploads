clear;
clc;
V1=6;V2=6;R1=2;R2=1;R3=2;
Y1=1/R1;Y2=1/R2;
Vm=((V1*Y1)+(V2*Y2))/(Y1+Y2);
Zm=1/(Y1+Y2);
I=Vm/(Zm+R3);
printf("Current in resistor R3 = %f Amp",I);
