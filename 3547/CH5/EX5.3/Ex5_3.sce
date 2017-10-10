// Example no.5.3
// To find quantum efficiency at different wavelength and same responsivity
// Page no.199

clc;
clear;

// Given data
lambda1=0.7;                                         // The radiation wavelength in micrometer
R=0.4;                                               // The responsivity in A/W
lambda2=0.5;                                         // The reduced wavelength in micrometer
neta1=(R*1.24)/lambda1;                              // The quantum efficiency for 0.7micrometer wavelength
neta2=neta1*(lambda2/lambda1);                       // The quantum efficiency for reduced wavelength 0.5micrometer 

// Display result on command window
printf('\n The quantum efficiency for 0.7 micrometer wavelength = %0.4f',neta1)
printf('\n The quantum efficiency for reduced wavelength of 0.5 micrometer = %0.3f',neta2)
