clc;
clear all;
Tc=7.18;//temperature in Kelvin
H0=6.4*1e4;//critical field in A/m
d=1e-3;//diameter of wire
r=d/2;//radius of wire
T=4.2;//given temperature
Hc=H0*(1-(T/Tc)^2);//critical field at T=4.2K
disp('A/m',Hc,'critical field at 4.2K is:')
Ic=2*%pi*r*Hc;//critical current through wire of lead
disp('Amp',Ic,'critical current through wire of lead is:')
//there is slight variation in the answer.. checked in calculator also.. there is mistake of book..
