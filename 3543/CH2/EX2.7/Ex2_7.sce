
// Example 2.7
// Calculation of attenuation and Rayleigh scattering coefficient for fiber
// Page no 50
clc;
clear;
close;

// Given data
n=1.46;                                      // Refractive index
p=0.286;                                     // Average photoelastic coefficient
B=7.25*10^-11;                               // Isothermal compressibility
k=1.38*10^-23;                               // Boltzmann's constant
T=1350;                                      // Fictive temperature
l1=1*10^-6;                                  // Wavelength 1
l2=1.3*10^-6;                                // Wavelength 2
L=10^3;                                      // Length

// Rayleigh scattering coefficient for length 1
y1=8*(%pi)^3*(n)^8*(p)^2*B*k*T/(3*(l1)^4);   
// Rayleigh scattering coefficient for length 2
y2=8*(%pi)^3*(n)^8*(p)^2*B*k*T/(3*(l2)^4);   
y1=y1;
y2=y2;
//Attenuation 1
T1=exp(-(y1*L));                               
//Attenuation 2
T2=exp(-(y2*L));                               

//Display result on command window
printf("\n First Rayleigh scattering coefficient = %0.6f m^-1 ",y1);
printf("\n Second Rayleigh scattering coefficient = %0.6f m^-1 ",y2);

printf("\n Attenuation (@ Length 1) = %0.2f (dB/km) ",T1);
printf("\n Attenuation (@ Length 2) = %0.2f (dB/km) ",T2);


