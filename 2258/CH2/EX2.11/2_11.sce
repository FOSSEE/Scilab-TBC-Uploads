clc();
clear;
// To calculate the mean free path of electron
T=300;   //temperature in K
n=8.5*10^28;   //density per m^3
rho=1.69*10^-8;   //resistivity in ohm/m^3
me=9.11*10^-31;    //mass of electron in kg
e=1.6*10^-19;    //charge in coulomb
KB=1.38*10^-23;    //boltzmann constant in J/k
lamda=sqrt(3*KB*me*T)/(n*(e^2)*rho);
printf("mean free path of electron in m is");
disp(lamda);

//answer given in the book is wrong
