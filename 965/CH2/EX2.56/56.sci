clc;
clear all;
disp("Heat loss rate")
r1=0.250/2;// mm
r2=0.500/2;// mm
e=0.06;//m
L=10;//m
k=0.48;// W/(m*C)
t1=280;// degree C
t2=50;// degree C
rp=((r1+r2)^2-e*e)^0.5;
rm=((r2-r1)^2-e*e)^0.5;
Rth=(1/(2*3.1416*k*L))*log((rp+rm)/(rp-rm))
Q=(t1-t2)/Rth;
disp("W",Q," Heat loss Q =")
