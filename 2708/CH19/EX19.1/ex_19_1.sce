 //Example 19.1 // density of electrons and holes 
clc;
clear;
//given data :
//2(2%pikm/h2)^1.5=p(assume) it is a constant
p=4.83D21;//constant
T=300;//temperature in kelvin
E=.7;//semiconductor with gap in eV
k=1.38D-23;// Boltzmann constant
d=k*T/1.6D-19;// to convert in eV
ni=p*((300)^1.5)*exp(-1*E/d);//formula for concentration of intrinsic charge carrier
disp(ni,"density of electrons and holes in per m3")
// in book it is wrongly calculated
