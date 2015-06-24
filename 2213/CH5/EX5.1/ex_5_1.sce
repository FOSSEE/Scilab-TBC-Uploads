//Example 5.1: Power
clc;
clear;
close;
//given data :
t1=20;// in degree C
t2=5;// in degree C
T=t1-t2;
A=3000;// volume of air to be conditioned in m^3
Ht=1220;// in J
H1=A*Ht*T;
m=1000; // per m^3
Hl=2450*10^3;// latent heat in J/kg
w=5;;// in kg
M=(w*A)/m;
H2=T*Hl;//in J
H=(H1+H2);
P=round(H/(3600*1000));
disp(P,"Power required,(kW) = ")
