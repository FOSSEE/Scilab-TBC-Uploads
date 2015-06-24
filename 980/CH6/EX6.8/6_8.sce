
clc;
clear;
format('v',11)
E=1;
d=1*10^-3;
A=(%pi*d^2)/4;       //A=area of the cross-section.
sigma=58.14*10^6;   //conductivity of copper.
J=sigma*E;
disp(J,"The current density in copper(in A/m^2)=");
I=J*A;
disp(I,"The current in the wire I(in ampere)=");
