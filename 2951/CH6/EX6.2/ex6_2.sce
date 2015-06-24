clc;
clear;
T=290;// temperature in kelvin
R=60;//resistance in ohms
k=1.38*10^(-23);

Esquare=4*R*T*k;
E=sqrt(Esquare); //noise voltage

disp("the noise voltage( in volts) is")
disp(E);
