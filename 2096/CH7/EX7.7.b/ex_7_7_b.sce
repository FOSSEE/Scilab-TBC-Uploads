//Example 7.7. // change in capacitance
clc;
clear;
close;
//given data :
A=300; // plates of area in mm^2
eo=8.85*10^-12; // in F/m
er1=1;
er2=8; //  dielectric contant of mica
d1=0.18; // 
d=0.2; // 
D=d-d1;
C=((eo*er1*10^-6*A)/(d*10^-3))*10^12;
C1=((eo*er1*10^-6*A)/(d1*10^-3))*10^12;
dC=C1-C;
a=dC/C;
b=D/d;
R=a/b;
disp(dC,"capacitance,dC(pF) = ")
disp(R,"ratio of per unit cahnge of capacitance to per unit change of displacement,R = ")
