// Example 7.1.c;//inernal power level
clc;
clear;
close;
e=1.6*10^-19;//Electronic charge
ht=6.62*10^-34;//Constt
C=3*10^8;//sPPED OF LIGHT IN M/S
h=1310*10^-9;//wavelength in meter
tr=30;//radiative recombination time in nano second
tnr=100;//non radiative recombination time in nano second
i=40;//injected current in milli ampere
t=(tr*tnr)/(tr+tnr);//Bulk recombination life time in nano second
nint= (t/tr)
Pint= (nint*((ht*C*i*10^-3)/(e*h)))*10^2;//internal power level in milli watt
disp(Pint,"internal power level in milli watt")
