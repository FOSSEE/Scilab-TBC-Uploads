clc();
clear;
// To calculate the thermal conductivity of copper
tow=3*10^-14;    //relaxation time in sec
n=8*10^28;    //density of electrons per m^3
KB=1.38*10^-23;   //boltzmann constant in J/k
T=0;   //temperature in C
T=T+273;   //temperature in K
m=9.1*10^-31;   //mass of electron in kg
sigma_T=((3*n*tow*(KB^2)*T)/(2*m));
printf("thermal conductivity of copper is %f ohm-1",sigma_T);
