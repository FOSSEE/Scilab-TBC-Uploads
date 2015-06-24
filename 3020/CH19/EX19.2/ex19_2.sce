clc;
clear all;
Tc=3.7;//temperature in Kelvin
H0=0.0306;//critical field at Tc
T=2;//given temperature
Hc=H0*(1-(T/Tc)^2);//critical field at T=2K
disp('T',Hc,'critical field at 2K is:')
