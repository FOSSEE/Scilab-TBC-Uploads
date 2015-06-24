clc();
clear;
//To determine velocity of an electron
lambda=0.08;                                       //de Briglie wavelength
m=9.1*10^-31;                                      //mass of electron
h=6.626*10^-34;                                   //plancks constant
v=h/(m*lambda*10^-9)                             //velocity of the electron
printf("The velocity of the electron is %f m/s",v);