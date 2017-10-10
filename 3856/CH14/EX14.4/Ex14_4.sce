//Calculate the Wavelength associated with Tennis ball and for an Electron traveling at the same speed 

//Example 14.4

clc;

clear;

h=6.626*10^-34;  //Planck's constant in J s

m1=6.0*10^-2;  //Mass of the tennis ball in kg

v=62;  ///Speed of the tennis ball in m s^-1

Lemda1=h/(m1*v);  //Wavelength of tennis ball in m (1 J=1 kg m^2 s^-2)

printf("Wavelength of tennis ball = %.1f*10^-34 m",Lemda1*10^34);

m2=9.10939*10^-31;  //Mass of the electron in kg

Lemda2=h/(m2*v);  //Wavelength of electron in m

Lemda=Lemda2*10^9;  //Wavelength of electron in nm

printf("\n Wavelength of electron = %.1f*10^4 nm",Lemda*10^-4);
