// Example No. 2.17
// To find the accumulated dispersion of the DCF so that the net accumulated dispersion does not exceed 1100 ps/nm
// Page no. 85

clc;
clear;

// Given data
lambda0=1490;                                                    // Zero dispersion wavelength in nm
lambda=1560;                                                     // Upper limit of wavelength range in nm
Sc=0.08;                                                         // Dispersion slope of transmission fiber ps/nm2/km
LTF=800;                                                         // Length of transmission fiber in km
DTF=Sc*(lambda-lambda0);                                         // Dispersion at 1560 nm in ps/nm/km

// The accumulated dispersion of the DCF
DLDCF=1100-DTF*LTF;                                              // The accumulated dispersion of the DCF in ps/nm

// Displaying the result in command window
printf('\n The accumulated dispersion of the DCF should be less than %0.0f ps/nm',DLDCF);
