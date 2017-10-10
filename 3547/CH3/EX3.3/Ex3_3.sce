// Example No. 3.3
// To calculate the longitudinal mode spacing and the minimum gain required for laser oscillation
// Page no. 106

clc;
clear;

// Given data
c=3*10^8;                                                 // The speed of ligth in air
L=500*10^(-6);                                            // The distance between mirrors
n=3.5;                                                    // The refractive index
inlossdB=50;                                              // The internal loss in dB/cm
R1=0.3;                                                   // The reflectivity of ligth wave which is reflected at A
R2=0.3;                                                   // The reflectivity of ligth wave which is reflected at B

// The longitudinal mode spacing
deltaf=(c/(2*n*L))*10^-9;                                  // The longitudinal mode spacing
L=0.05;                                                    // The distance between mirrors in cm
amir=(1/(2*L))*log(1/(R1*R2));                             // The loss due to mirrors per cm
aint=log(10^(inlossdB/10));                                // The coefficient of internal loss due to scattering

// The minimum gain required
g=aint+amir;                                               // The minimum gain required for laser oscillation

// Displaying the result in command window
printf('\n The longitudinal mode spacing = %0.2f GHz',deltaf);
printf('\n The minimum gain required for laser oscillation per cm =  %0.2f cm^-1',g);
