clc();
clear;
// To calculate the order of magnitude of velocity of molecules
MH=1.008*2*1.67*10^-27;    //mass in kg
T=30;   //temperature in C
T=T+273;    //temperature in K
KB=1.38*10^-23;    //boltzmann constant in J/k
KE=(3/2)*KB*T;   //kinetic energy in J
KEeV=KE*6.24*10^18;   //kinetic energy in eV
cbar=sqrt((3*KB*T)/MH);
printf("average kinetic energy in J is");
disp(KE);
printf("average kinetic energy in eV is");
disp(KEeV);
printf("velocity of molecules is %f m/s",cbar);

//answers for average kinetic energy in eV and velocity of electrons given in the book are wrong
