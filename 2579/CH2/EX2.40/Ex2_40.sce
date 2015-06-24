//Ex:2.40
clc;
clear;
close;
Irms=4;// rms current in Amp
Rr=70;// radiation resistance in ohm
Pmax=(sqrt(2)*Irms)^2*Rr;// max power in Watts
Pav=Pmax/2;// average power in Watts
d=60*10^3;// distance in m
Pd=(Pav*1.6)/(4*%pi*d^2);// power density
n=120*%pi;// efficiency
E=sqrt(n*Pd);// electric field in V/m
H=E/n;// magnetic field A/m
printf("The power density = %f micro Watt/m^2", Pd*10^6);
printf("\n The electric field = %f mV/m", E);
printf("\n The magnetic field = %f*10^-5 AT/m ", H*10^5);