//chapter 6
//example 6.9
//Calculate average drift velocity of electrons
//page 149
clear;
clc;
//given
I=4; // in A (current in the conductor)
e=1.6E-19; // in C (charge of electron)
A=1E-6; // in m^2 (cross-sectional area)
N_A=6.02E23; // in atoms/gram-atom (Avogadro's number)
p=8.9; // in g/cm^3 (density)
M=63.6; // atomic mass of copper
//calculate
n=N_A*p/M; // Calculation of density of electrons in g/cm^3
printf('\nThe density of copper atoms is \tn=%1.2E atoms/m^3',n);
n=n*1E6; // changing unit from g/cm^3 to g/m^3
printf('\n\t\t\t\t =%1.2E atoms/m^3',n);
v_d=I/(n*A*e);
printf('\n\nThe average drift velocity of free electrons is \tv_d=%1.1E m/s',v_d);
