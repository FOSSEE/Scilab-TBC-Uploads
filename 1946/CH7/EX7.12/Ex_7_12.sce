// Example 7.12;//OPTICAL POWER EMITTED & EXTERNAL POWER EFFICIENCY
clc;
clear;
close;
e=1.6*10^-19;//Electronic charge
ht=6.62*10^-34;//Constt
C=3*10^8;//sPPED OF LIGHT IN M/S
h=0.85*10^-5;//wavelength in meter
V=1;//VOLTAGE
F=0.68;//transmiison factor
nx=3.6;//refractive index
n=1;;//refrative index of air
nint=0.6;//inernal efficiency
i=20*10^-3;//injected current in milli ampere
Pint= (nint*((ht*C*i*10^-3)/(e*h)))*10^7;//internal power level in milli watt
Pe=round((Pint*F)/(4*nx^2)*10^3);//optical power emitted
nep=(Pe*10^-6/(V*i))*100;//EXTERNAL POWER EFFICIENCY
disp(Pe,"optical power emitted in micro watt")
disp(nep,"external power efficiency is")
