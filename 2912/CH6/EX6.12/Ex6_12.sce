//chapter 6
//example 6.12
//Calculate electron density for a metal
//page 150
clear;
clc;
//given
E_F_L=4.7; // in eV (Fermi energy in Lithium)
E_F_M=2.35; // in eV (Fermi energy in a metal)
n_L=4.6E28; // in 1/m^3 (density of electron in Lithium)
//calculate
// Since n=((2*m/h)^3/2)*E_F^(3/2)*(8*pi/3) and all things except E_F are constant
// Therefore we have n=C*E_F^(3/2)   where C is proportionality constant
// n1/n2=(E_F_1/E_F_2)^(3/2)
// Therefore we have
n_M=n_L*(E_F_M/E_F_L); // calculation of electron density for a metal
printf('\nThe lectron density for a metal is \t=%1.1E 1/m^3', n_M);
//Note: Answer in the book is wrong due to priting error
