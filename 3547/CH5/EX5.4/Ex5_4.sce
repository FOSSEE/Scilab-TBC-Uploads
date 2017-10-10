// Example no.5.4
// To determine the refractive index and thickness of the antireflection coating
// Page no.199

clc;
clear;

// Given data
lambda=680*10^-9;                                   // Wavelength of red ligth in meter
nair=1;                                             // Refractive index of air
nsilicon=3.6;                                       // Refractive index of silicon
nAR=sqrt(nair*nsilicon);                            // Refractive index of antireflection coating
tAR=lambda/(4*nAR);                                 // Thickness of antireflection coating

// Display result on command window
printf('\n Refractive index of antireflection coating = %0.1f ',nAR)
printf('\n Thickness of antireflection coating = %0.0f nm',tAR*10^9)



