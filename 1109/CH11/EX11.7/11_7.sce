clear;
clc;
Z1=20;Z2=10;Vrms=10;
Zot=sqrt(((Z1*Z1)/4)+(Z1*Z2));
I=Vrms/Zot;
a=[30 27.32;1 -3.732];
b=[0.577;0];
b=inv(a)*b;
printf("Current flowing through the terminating impedance = %f mA",round(b(2,1)*(10^4)*100)/100);
