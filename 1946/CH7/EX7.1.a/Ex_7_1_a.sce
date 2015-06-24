// Example 7.1.a;//Bulk recombination life time
clc;
clear;
close;
h=1310*10^-9;//wavelength in meter
tr=30;//radiative recombination time in nano second
tnr=100;//non radiative recombination time in nano second
i=40;//injected current in milli ampere
t=(tr*tnr)/(tr+tnr);//Bulk recombination life time in nano second
disp(t,"Bulk recombination life time in nano second")
