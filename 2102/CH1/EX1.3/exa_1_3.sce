// Exa 1.3
clc;
clear;
close;
// Given data
format('v',13)
N_D= 6*10^18;// in per cube cm
N_A= 3*10^15;// in per cube cm
ni= 2.5*10^12;
Nn= N_D-N_A;// in per cube cm
rho_n= ni^2/Nn;// in per cube cm
// Part (i)
disp(rho_n,"The concentration of holes in n-type in per cm^3 is : ")
disp(Nn,"Concentration  of electrons in n-type in per cm^3 is : ")
// Part (ii)
disp("The material is of n-type")
