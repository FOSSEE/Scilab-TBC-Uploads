//clc();
clear;
//To determine resultant voltage across the capacitor
A=650*10^-4;        //area of capacitor plate in m^2
d=4*10^-2;          //seperation of parallel plate capacitor in m
Q=2*10^-10;         //charge on capacitor in C
epsilonr=3.5;       //dielectric constant of material
epsilon0=8.85*10^-12;
C=(A*epsilon0)/d;
disp(C);
V=Q/C;
printf("resultant voltage across capacitor in V is ");
disp(V);
