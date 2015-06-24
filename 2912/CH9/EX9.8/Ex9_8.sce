// chapter 9
// example 9.8
// find intrinsic carrier density and conductivity at 300K in germanium
// page 275
clear;
clc;
M=72.6; // atomic mass of germanium
P=5400; // in Kg/m^3 (density)
ue=0.4; // in m^2/V-s (mobility of electrons)
uh=0.2; // in m^2/V-s (mobility of holes)
Eg=0.7; // in eV (Band gap)
m=9.1E-31; // in Kg (mass of electron)
k=1.38E-23; // in J/K (Boltzmann’s constant)
T=300; // in K (temperature)
h=6.63E-34;// in J/s (Planck’s constant)
pi=3.14; // value of pi used in the solution
e=1.6E-19; // in C(charge of electron)
// calculate
Eg=Eg*e; // changing unit from eV to J
ni=2*(2*pi*m*k*T/h^2)^(3/2)*exp(-Eg/(2*k*T));
printf('\nThe intrinsic carrier density for germanium at 300K is \tni=%1.1E /m^3',ni);
sigma=ni*e*(ue+uh);
printf('\nThe conductivity of germanium is \t%1.2f (ohm-m)^-1',sigma);
// Note: Answer in the book is wrong due to calculation mistake
