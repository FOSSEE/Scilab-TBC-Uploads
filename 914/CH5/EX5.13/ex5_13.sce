clc;
warning("off");
printf("\n\n example5.13 - pg184");
// given
l=4;  //[m] - length of the tube
id=1.6*10^-3;  //[m] - inside diameter
Nkn=10;  // - knudsen no.
Ma=92;  // - molecular weight of gas
mu=6.5*10^-4;  //[kg/m*sec] - viscosity
T=300;  //[K] - temperature
R=8314;  //[kPa*m^3*kmol^-1*K^-1] - gas constant
lambdaA=Nkn*id;  //[m] mean free path
// for calculating pressure using the formula lamdaA=32*(mu/p)*((R*T)/(2*pi*Ma))^(1/2)
p=32*(mu/lambdaA)*((R*T)/(2*%pi*Ma))^(1/2);
patm=p/(1.01325*10^5);
printf("\n\n p=%fkg/m*sec^2=%fPa=%eatm",p,p,patm);
printf("\n The value of 10 for the knudsen number is on the border between Knudsen diffusion and transition flow");



