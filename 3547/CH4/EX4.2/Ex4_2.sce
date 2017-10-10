// Example no.4.2
// To calculate the voltage required to introduce a phase shift of pi/2.
// Page no.152

clc;
clear;

// Given data
lambda0=1530*10^-9;                                  // An electro-optic modulator operating wavelength
d=10*10^-6;                                          // Thickness
L=5*10^-2;                                           // Length
n0=2.2;                                              // Refractive index
r33=30*10^-12;                                       // Pockel coefficient in m/V
deltaphi=%pi/2;                                      // Phase shift
V=(deltaphi*lambda0*d)/(%pi*L*n0^3*r33);             // The voltage required to introduce a phase shift of pi/2

//Displaying the result in command window
printf('\n The voltage required to introduce a phase shift of pi/2 = %0.2f V',V);
