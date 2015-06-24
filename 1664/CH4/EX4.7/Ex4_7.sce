

//Example No.136 .
//Page No. 4.7.
//To find de-Broglie wavelength.
clc;clear;
E = 45*1.6*10^(-19);//Energy of the electron.
h = 6.63*10^(-34);//Planck's constant
m = 9.1*10^(-31);//Mass of the electron.
w = h/(sqrt(2*m*E));//de-Broglie wavelength.
printf("\nThe de-Broglie wavelength of the photon is %3.3e m",w);

