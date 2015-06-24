//Example 7.7.c // ratio
clc;
clear;
close;
//given data :
A=300; // plates of area in mm^2
eo=8.85*10^-12; // in F/m
er1=1;
er2=8; //  dielectric contant of mica
d1=0.01; // thickness of mica
d2=0.02; // when a displacement is applied
d=0.2; // 
D=d-d1;
D1=D-d2;
C=((eo*A*10^-6)/(((D/er1)+(d1/er2))*10^-3))*10^12;
C1=((eo*A*10^-6)/(((D1/er1)+(d1/er2))*10^-3))*10^12;
dC=C1-C;
a=dC/C;
b=d2/d;
R=a/b;
disp(C,"Capacitance ,C(pF)=")
disp(dC,"capacitance,dC(pF) = ")
disp(R,"ratio of per unit cahnge of capacitance to per unit change of displacement,R = ")
