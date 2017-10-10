// Example 3.6
// To calculate the band-gap energy.
// Page no.123

clc;
clear;

// Given data
m=9.109*10^(-31);                             // The electron rest mass in kg
meff1=0.07*m;                                 // The effective mass of an electron in the conduction band
meff2=0.5*m;                                  // The effective mass of an electron in the valence band
mr=(meff1*meff2)/(meff1+meff2);               // The reduced mass
hkl=7.84*10^(-26);                            // The electron momentum in kg.m/s
lambda=0.8*10^(-6);                           // The wavelength of electromagnetic wave in m
h=1.054*10^(-34);                             // The distance between two levels
c=3*10^8;                                     // Speed of ligth in m/s
hw=(h*2*%pi*c)/lambda;                       // The poton energy in J

// The band-gap energy.
Eg=hw-(hkl^2/(2*mr));                       // The band-gap energy in J

// Displaying the result in command window
printf('\n The band-gap energy = %0.2f X 10^-19 J',Eg*10^19);
