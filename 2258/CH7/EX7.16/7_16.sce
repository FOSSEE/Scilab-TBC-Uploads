clc();
clear;
// To calculate the diffusion coefficient of electrons
T=300;   //temperature in K
KB=1.38*10^-23;
e=1.6*10^-19;
mew_e=0.19;    //mobility of electrons in m^2/Vs
Dn=mew_e*KB*T/e;
printf("diffusion coefficient of electrons is %f m^2/s",Dn);
