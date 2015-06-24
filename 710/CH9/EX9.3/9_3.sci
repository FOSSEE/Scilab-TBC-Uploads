clc();
clear;
//To determine the maximum kinetic energy of photoelectron
h=6.626*10^-34;                               //plancks constant
c=3*10^8;                                     //speed of light
lambda=300*10^-9;                             //wavelength
E=(h*c)/lambda                              //energy of photon
phi=(2.2*1.6*(10^-19))-1.94;
Kmax=E-phi                                 //maximum kinetic energy
printf("The maximum kinetic energy  is %f eV",Kmax);