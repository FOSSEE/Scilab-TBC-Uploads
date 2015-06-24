clc();
clear;
//To determine the kinetic energy
//K=p^2/(lambda^2*2*m) where K is kinetic energy
h=6.626*10^-34;                         //plancks constant
lambda=10^-14;                          //de Broglie wavelength
m=9.1*10^-31;                           //mass of electron
K=(h^2/((lambda^2)*2*m*1.6*10^-19))*10^-9
printf("The kinetic energy is %f Gev",K);
//It is not possible to confine the electron to a nucleus.The experimental observations show that even electrons assosciated with unstable atoms never have energy more than a fraction of MeV
