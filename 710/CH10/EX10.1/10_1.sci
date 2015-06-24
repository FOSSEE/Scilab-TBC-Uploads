clc();
clear;
//To calculate the de Broglie wavelength
v=10^7;                       //speed of electron in m/s
h=6.626*10^-34;               //plancks constant
m=9.1*10^-31;                 //mass of electron
lambda=h/(m*v)                //de Broglie wavelength in m
printf("The de Broglie wavelength is %e",lambda);