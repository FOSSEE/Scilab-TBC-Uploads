// Exa 1.18
clc;
clear;
close;
format('e',8)
// Given data
N_D = 2*10^16;// in /cm^3
N_A = 5*10^15;// in /cm^3
// The concentration of holes 
Pp = N_D-N_A;// in /cm^3
disp(Pp,"The concentration of holes in /cm^3 is");
n_i = 10^12;
// The concentartion of electrons 
n_p = (n_i^2)/Pp;// in /cm^3
disp(n_p,"The concentartion of electrons in /cm^3 is");
