// Example no. 2.10
// To design single mode fiber such that absolute accumulated dispersion should not exceed 1100ps/nm
// Page no. 77

clc;
clear;

// Given data
lambda1=1530;                              // Left edge of wavelength range in nm
lambda2=1560;                              // Rigth edge of wavelength range in nm
lambda0=1545;                              // Center of the band in nm
L=80;                                     // Fiber length in km

disp('We choose center of band (lambda_0) for large maximum allowable dispersion slope.');

Dlambda2=1100/L;                         // Dispersion at rigth edge of band in ps/nm/km
S=Dlambda2/(lambda2-lambda0);            // Dispersion slope in ps/nm^2/km

// Displaying the result in command window
printf('\n Dispersion slope = %0.3f ps/nm^2/km',S);
