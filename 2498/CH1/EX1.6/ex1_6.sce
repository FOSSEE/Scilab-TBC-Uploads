// Exa 1.6
clc;
clear;
close;
format('e',9)
// Given data
sigma = 100;// in (ohm-m)^-1
n_i = 2.5*10^13;// in /cm^3
miu_n = 3800;// in cm^2/V-s
miu_p = 1800;// in cm^2/V-s
q = 1.6*10^-19;// in C
// Conductivity of a p-type germanium, sigma = q*p*miu_p or
p = sigma/(q*miu_p);// in /cm^3
disp(p,"Concentration of holes in a p-type Ge in /cm^3 is");
// The concentration of electrons in a p-type Ge
n = (n_i^2)/p;// in /cm^3
disp(n,"The concentration of electrons in a p-type Ge in /cm^3 is");
//Given for Si
sigma= 0.1;// in (ohm m)^-1
miu_n= 1300;// in cm^2/V-sec
n_i= 1.5*10^10;// in /cm^3
//sigma = q*n*miu_n;
n = sigma/(q*miu_n);// in /cm^3
disp(n,"The concentration of electrons in n-type Si in /cm^3 is");
// The concentration of holes in n-type Si
p = (n_i^2)/n;// in /cm^3
disp(p,"The concentration of holes in n-type Si in /cm^3 is");
