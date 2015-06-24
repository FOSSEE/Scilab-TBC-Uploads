//clc();
clear;
//To determine the electronic polarisability
epsilonr=3.75;        //relative dielectric constant
T=27;               //temperature in C
gama=1/3;           //internal field constant
rho=2050;           //density of sulphur in kg/m^3
Ma=32;              //atomic weight of sulphur in a.m.u
epsilon0=8.85*10^-12;
Na=6.022*10^23;
A=(epsilonr-1)/(epsilonr+2);
printf("%f",A);
alphae=(A*3*epsilon0*Ma)/(rho*Na);
printf("electronic polarisability of sulphur in Fm^2 is");
disp(alphae);
