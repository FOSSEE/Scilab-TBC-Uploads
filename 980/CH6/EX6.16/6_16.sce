clc;
clear;
format('e',11);
E=1;
epsilone_r=1.5;
Xe=epsilone_r-1;                    //Xe=electric susceptibility.
epsilone_0=8.85*10^-12;
P=epsilone_0*Xe*E;
disp(P,"The polarisation density(in C/m^2)=");
