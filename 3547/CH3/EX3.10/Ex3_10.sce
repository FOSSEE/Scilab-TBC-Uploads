// Example no.3.10
// To calculate the effective mass of the electron in the valence band.
// Page no.134

clc;
clear;

// Given data
Eg=1.18;                                               // Band gap in eV
Eg=1.18*1.602*10^-19;                                  // Band gap in J
hk1=9*10^-26;                                          // The crystal momentum in Kg.m/s
h=1.054*10^(-34);                                      // The distance between two levels
f=3.94*10^14;                                          // Light wave of frequency
m=9.109*10^(-31);                                      // The electron rest mass in kg

mr=(hk1)^2/(2*(h*2*%pi*f-Eg));                         // The reduced mass in kg
meff1=0.07*m;                                          // The effective mass of an electron in the conduction band

// The effective mass of the electron in the valence band.
meff2=(mr*meff1)/(meff1-mr);                   // The effective mass of the electron in the valence band.

// Displaying the result in command window
printf('\n The effective mass of the electron in the valence band = %0.2f X 10^-31 kg',meff2*10^31);
// The answer is varrying due to round-off error
