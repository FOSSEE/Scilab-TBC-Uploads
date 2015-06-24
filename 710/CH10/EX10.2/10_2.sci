clc();
clear;
//To determine the kinetic energy of proton & electron
h=6.626*10^-34;                       //plancks constant
lambda=0.3;                           //de Broglie wavelength
p=h/(lambda*10^-9);                           //uncertainity in determining momentum in kg.m/s
//For electron
me=9.1*10^-31;                        //mass of electron
K1=p^2/(2*me);                         //kinetic energy of electron in J
//For proton
mp=1.672*10^-27;                      //mass of proton
K2=p^2/(2*mp)                         //kinetic energy of proton in J
printf("The kinetic energy of electron is %e J and kinetic energy of proton is %e J",K1,K2);