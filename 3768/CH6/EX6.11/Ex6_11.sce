//Example number 6.11, Page number 121

clc;clear;
close;

//Variable declaration
Kb=1.38*10**-23;     //boltzmann constant(J/k)
m=9.1*10**-31;      //mass(kg)
tow=3*10**-14;    //relaxation time(sec)
n=8*10**28;      //density of electrons(per m**3)
T=273;     //temperature(K)
//Calculation
sigma_T=3*n*tow*T*Kb**2/(2*m);      //thermal conductivity(W/mK)
//Result
printf("thermal conductivity is %.3f W/mK",sigma_T)
