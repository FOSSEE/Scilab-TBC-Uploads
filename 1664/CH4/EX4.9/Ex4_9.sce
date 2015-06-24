

//Example No 137.
//Page No 4.9.
//The de-Broglie wavelength of alpha particle.
clc;clear;
V = 1000;//Potential difference applied -[V].
h = (6.626*10^(-34));//Planck's constant -[J-s].
m = (1.67*10^(-27));//Mass of a proton -[kg].
e = (1.6*10^(-19));//charge of electron -[J].
w = h/sqrt(2*m*e*V);//de-Broglie wavelength
printf("\nThe de-Broglie wavelength of alpha particle = %3.3e m",w);
