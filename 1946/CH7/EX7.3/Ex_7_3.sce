// Example 7.3;//non radiative recombination time 
clc;
clear;
close;
h=890*10^-9;//wavelength in meter
tr=100;//radiative recombination time in nano second
t=130;//Bulk recombination life time in nano second
i=14;//injected current in milli ampere
tnr=round((t*tr)/(t-tr));//non radiative recombination time in nano second
disp(tnr,"non radiative recombination time in nano second")
