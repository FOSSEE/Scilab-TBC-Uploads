clc;
clear;
D=60;//mm
pdiff=4;//kPa
Q=0.003;//(m^3)/sec
d=789;//kg/(m^3)
vis=1.19*(10^(-3));//N*sec/(m^2)
Re=d*4*Q/(%pi*D*vis);
//assuming B=dia/D=0.577, where dia=diameter of nozzle, and obtaining Cn from Re as 0.972
Cn=0.972;
B=0.577;
dia=((4*Q/(Cn*%pi))/((2*pdiff*1000/(d*(1-(B^4))))^0.5))^0.5;
disp("mm",dia*1000,"Diameter of the nozzle=")
