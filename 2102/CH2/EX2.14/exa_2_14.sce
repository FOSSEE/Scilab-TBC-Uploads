// Exa 2.14
clc;
clear;
close;
// Given data
N_D= 10^20;// in /cm^3
ni= 2.5*10^12;// in /cm^3
kT=26;// in meV
kT=kT*10^-3;// in eV
n= N_D;// as N_D>>ni
p= ni^2/n;//in /cm^3
disp(p,"The minority carrier concentration per cm^3 is :")

// Part (b)
LocationOfFermiLevel= kT*log(N_D/ni);// in eV
disp("The Fermi Level will be "+string(LocationOfFermiLevel)+" eV above Fermi level")

//Note: The value of Minority carrier concentration of part(a) is calculated wrong because the value of (2.5*10^12)^2/(10^20) will be 62500 not 2.5*10^4
