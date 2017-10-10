//What is a wavelength of an electron when it is accelerated 

//Example 14.5

clc;

clear;

h=6.626*10^-34;  //Planck's constant in J s

me=9.109*10^-31;  //Mass of the electron in kg

e=1.602*10^-19;  //Charge on an electron in C

V=1*10^3;  //Potencial difference in V

Lemda1=h/sqrt(2*me*e*V);  //Wavelength of an electron in m (1 J=1 C *1 V)

Lemda=Lemda1*10^9;  //Wavelength of  an electron in nm (1m=10^9 nm)

printf("Wavelength of an electron = %.4f nm",Lemda);
