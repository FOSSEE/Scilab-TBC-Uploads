//chapter 6
//example 6.10
//Calculate mobility of electrons
//page 149-150
clear;
clc;
//given
n=9E28; // in 1/m^3 (density of valence electrons)
sigma=6E7; // in mho/m (conductivity of copper)
e=1.6E-19; // in C (charge of electron)
//calculate
// Since sigma=n*e*mu  therefore
mu=sigma/(n*e); // calculation of mobility of electron
printf('\n\nThe mobility of electrons is \t%1.2E  m^2/V-s',mu);
