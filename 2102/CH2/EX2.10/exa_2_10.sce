// Exa 2.10
clc;
clear;
close;
// Given data
ni= 1.8*10^15;// in /m^3
rho= 2*10^5;// in Ωm
q=1.6*10^-19;// in C
dopingConcentration= 10^25;// in /m^3
n=dopingConcentration;
MCC= ni^2/dopingConcentration; // Minority carrier concentration per cube meter
miu_n= 1/(2*rho*q*ni);// in m^3/Vs
disp(miu_n,"The value of µn in m^3/Vs is : ")

// Part (b)
sigma= q*n*miu_n;//in (Ωm)^-1
rho= 1/sigma;// in Ωm
disp(rho,"Resistivity in Ωm is : ")

// Part(c)
kT= 26*10^-3;//in V
no= n;// in /m^3
Shift_inFermiLevel= kT*log(no/ni);// in eV
disp(Shift_inFermiLevel,"Shift in Fermi level due to doping in eV is :")
disp("Hence, E_F lies "+string(Shift_inFermiLevel)+" eV above Fermi level Ei")

// Part (d)
MCC= ni^2/dopingConcentration; // Minority carrier concentration per cube meter
disp(MCC,"Minority carrier concentration per cube meter when its temperature is increased is : ")
