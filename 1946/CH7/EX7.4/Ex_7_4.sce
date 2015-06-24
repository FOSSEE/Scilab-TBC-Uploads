// Example 7.4;//inernal power level
clc;
clear;
close;
e=1.6*10^-19;//Electronic charge
ht=6.62*10^-34;//Constt
C=3*10^8;//sPPED OF LIGHT IN M/S
h=0.87*10^-9;//wavelength in meter
i=40;//injected current in milli ampere
nint= 0.625;//inernal quantum efficieny
Pint= (nint*((ht*C*i*10^-3)/(e*h)));//internal power level in milli watt
disp(Pint,"internal power level in milli watt")
