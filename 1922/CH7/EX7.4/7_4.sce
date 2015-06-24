clc
clear
//Initialization of variables
f0=0.7

V=5.1e-2
P1=0.77 //Mpa
P2=10 //Mpa
R=8.3143*10^3
T=298 //K
//calculations
lnr= V/(R*T) *(P2-P1)*10^6
f=exp(lnr) *f0
//results
printf("Fugacity = %.3f Mpa",f)
