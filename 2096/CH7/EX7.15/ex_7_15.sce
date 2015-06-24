//Example 7.15 // change in length and force
clc;
clear;
close;
//given data :
E=207*10^9; // strain gauge in N/m^2
L=0.12; // im m
A=3.8*10^-4; // in m^2
R=220; // in ohm
Gf=2.2;
dR=0.015;  // in ohm
dL=(((dR/R)*L)/Gf);
a=E*(dL/L);
F=a*A/1000;
disp(dL,"change in length,L(m) = ")
disp(F,"the force,F(kN) = ")
