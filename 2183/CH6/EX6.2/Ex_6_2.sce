// Example 6.2//internal power level
clc;
clear;
close;
e=1.6*10^-19;//Electronic charge
ht=6.62*10^-34;//Constt
C=3*10^8;//speed light in m/s
h=0.87*10^-6;//wavelength in meter
tr=80;//radiative recombination time in nano second
tnr=120;//non radiative recombination time in nano second
t=(tr*tnr)/(tr+tnr);//Bulk recombination life time in nano second
nint= (t/tr)
i=40;//injected current in milli ampere
Pint= (nint*((ht*C*i*10^-3)/(e*h)))*10^3;//internal power level in milli Watt
disp(Pint,"internal power level in milli Watt")
