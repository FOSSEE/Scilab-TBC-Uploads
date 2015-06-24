clc();
clear;
//Given :
//(a)Rock
h = 6.625*10^-34; //planck's constant in Js
m = 50 ; // mass in g
v = 40; // Speed in m/s
// m = 50*10^-3 kg , 1g = 1.0*10^-3 kg
lambda1 = h/(m*10^-3*v); // Wavelength in m
//(b)For an electron
V = 50; // in volts
lambda2 = 12.28/sqrt(V); // Wavelength in A
printf("De Broglie wavelength \n\n (a)Rock : %.2f x 10^-34 m \n (b)For an electron : %.2f A",lambda1*10^34,lambda2);
