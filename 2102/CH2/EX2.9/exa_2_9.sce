// Exa 2.9
clc;
clear;
close;
// Given data
N_D= 5*10^28/(20*10^6);// in /m^3
// For the Fermi level
// E_F= E_C if N_C= N_D,
// N_D= 4.82*10^21 * T^(3/2)  /m^3
T= (N_D/( 4.82*10^21 ))^(2/3);// in K
disp(T,"Temperature in K is : ")
