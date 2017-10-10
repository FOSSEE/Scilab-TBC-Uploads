// Example no.3.8
// To find the wavelength of the light emitted
// Page no.133

clc;
clear;

// Given data
RspRst=2*10^14;                                           // The ratio of spontaneous emission rate to stimulated emission rate
T=30;                                                     // Temperature in degree celcius
kB=1.38*10^(-23);                                         // The Boltzmann’s constant J/K
h=1.054*10^(-34);                                         // The distance between two levels
c=3*10^8;                                                 // Speed of ligth in air

T=T+273;                                                  // Temperature in Kelvin
w=(log(RspRst)*kB*T)/h;                                   // Frequency in Rad

// The wavelength of the light emitted
lambda=(2*%pi*c)/w;                                      // The wavelength of the light emitted

// Displaying the result in command window
printf('\n The wavelength of the light emitted =  %0.2f micrometer',lambda*10^6);
