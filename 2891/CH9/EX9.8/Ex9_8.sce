//Exa 9.8
clc;
clear;
close;
// given :
f=60 // in MHz
f=60*10^6 // in Hertz
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in meter
Ptx=1 // transmitting power in kilo watt
ht=50 // height of transmiting antenna in meter
hr=5 // height of receiving antenna in meter
E=80 // electric field in micro V/m
E=80*10^(-6) // electric field in V/m
E0=3*137.6*sqrt(Ptx)*(8/5)*10^3 // field in mV/m at 1 meter where Ptx is in kW
E0=3*137.6*sqrt(Ptx)*(8/5)*10^3*10^(-3) // field in V/m at 1 meter where Ptx is in kW
// formula : E=(4*(%pi)*ht*hr*E0)/(lambda*d^2)
d=sqrt((4*%pi*ht*hr*E0)/(lambda*E)) // range of space wave in meter
disp(d/1000,"range of space wave in Km:")
