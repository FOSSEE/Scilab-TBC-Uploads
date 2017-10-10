// Example no.5.2
// To calculate (a) the responsivity R and (b) the cutoff wavelength 
// Page no.198

clc;
clear;

// Given data
neta=0.9;                                        // The quantum efficiency
Eg=1.42;                                         // The band-gap energy in eV
lambda=1.1;                                      // The operating (free-space) wavelength in micrometer

// (a) The responsivity 
R=(neta*lambda)/1.24;                            // The responsivity in A/W

// Display result on command window
printf('\n The responsivity = %0.1f A/W',R)                                                             //Wrong answer in book

// (b) The cutoff wavelength 
lambdac=1.2/Eg;                                //The cutoff wavelength in micrometer

// Display result on command window
printf('\n The cutoff wavelength = %0.3f micrometer',lambdac)                                             //Wrong answer in book
