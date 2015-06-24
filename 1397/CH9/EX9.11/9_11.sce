//clc();
clear;
//To determine field strength and total dipole moment
A=180*10^-4;         //area of capacitor in m
C=3*10^-6;           //capacitance in F
epsilonr=8;          //relative permittivity
V=10;                //potential in V
epsilon0=8.85*10^-12;
E=(V*C)/(epsilon0*epsilonr);
printf("field strength in V/m is");
disp(E);
T=epsilon0*(epsilonr-1)*E*A;
printf("total dipole moment in Coul m is ");
disp(T);

//answer in book is wrong
