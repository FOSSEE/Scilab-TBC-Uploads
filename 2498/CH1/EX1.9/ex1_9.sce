// Exa 1.9
clc;
clear;
close;
format('v',6)
// Given data
N_D= 5*10^28/(2*10^8);
// The Fermi level, E_F= E_C if,
N_C= N_D;
// Formula N_C= 4.82*10^21*T^(3/2)
T= (N_C/(4.82*10^21))^(2/3);// in K
disp(T,"The value of temperature in K is : ")
