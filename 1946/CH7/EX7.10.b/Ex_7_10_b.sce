// Example 7.10.b;//power emitted
clc;
clear;
close;
n=3.5;//refractive index
e=1.6*10^-19;//Electronic charge
ht=6.62*10^-34;//Constt
C=3*10^8;//sPPED OF LIGHT IN M/S
h=1310*10^-9;//wavelength in meter
tr=25;//radiative recombination time in nano second
tnr=90;//non radiative recombination time in nano second
i=35;//injected current in milli ampere
t=(tr*tnr)/(tr+tnr);//Bulk recombination life time in nano second
nint= (t/tr)
Pint= (nint*((ht*C*i*10^-3)/(e*h)))*10^2;//internal power level in milli watt
P=(Pint)/(n*(n+1)^2)*10;//Power emitted
disp(P,"power emitted in milli watt is")
