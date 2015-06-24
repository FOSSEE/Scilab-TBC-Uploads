//clc();
clear;
//To determine the polarisability of He and its relative permittivity
R=0.55*10^-10;        //radius of He atom in m
N=2.7*10^25;          //density in atoms/m^3;
epsilon0=8.85*10^-12;
alphae=4*%pi*epsilon0*R^3;
printf("polarisability in Fm^2 is ");
disp(alphae);
epsilonr=((N*alphae)/epsilon0)+1;
printf("relative permittivity in Fm^2 is");
disp(epsilonr);
