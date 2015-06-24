//clc();
clear;
//To determine the atomic polarizability
epsilonr=4;        //relative permeability
epsilon0=8.85*10^-12;
N=2.08*10^3;       //density of atoms in kg/m^3
Ma=32;             //atomic weight in a.m.u
A=(epsilonr-1)/(epsilonr+2);
disp(A);
alpha=(A*3*epsilon0)/N;
printf("atomic polarizability in Fm^2 is");
disp(alpha);

//answer in book is wrong
