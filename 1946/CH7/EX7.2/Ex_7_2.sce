// Example 7.2;//power radiated by LED
clc;
clear;
close;
e=1.6*10^-19;//Electronic charge
ht=6.62*10^-34;//plank Constt
C=3*10^8;//sPPED OF LIGHT IN M/S
h=670*10^-9;//wavelength in meter
i=50;//injected current in milli ampere
nint=0.03;//inernal quantume efficiency
Pint= (nint*((ht*C*i*10^-3)/(e*h)))*10^2;//internal power level in milli watt
disp(Pint,"internal power level in milli watt")
