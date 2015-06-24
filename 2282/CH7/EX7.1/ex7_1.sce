// Example 7.1, page no-249
clear
clc

d=36000 *10^3 //distance of geostationary satellite from earth's surface
Gt=100  // Antenna gain of 20dB
Pt=10   // Power radiated by earth station

Prd=Pt*Gt/(4*%pi*d^2)
printf("Prd = %.4f * 10 ^-12 W/m^2\n Power received by the receiving antenna is given by  Pr = %.3f pW",Prd*10^12,Prd*10^13)
