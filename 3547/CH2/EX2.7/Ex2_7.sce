// Example no.2.7
// To find the core radius of step-index fiber
// Page no.69

clc;
clear;

// Given data
n1=1.45;                                                         // Refractive index of core
delta=0.005;
n2=n1*(1-delta);                                                 // Refractive index of cladding
lambdac=1.1;                                                     // Cutoff wavelength in meter
lambda=1.55;                                                     // Operating wavelength in micrometer
a=((2.4048*lambdac*10^-6)/(2*%pi*(n1^2-n2^2)^(1/2)))/10^-6;      // Core radius

//Displaying the result in command window
printf('\n The core radius of step-index fiber = %0.3f micrometer',a);
printf('\n Operating wavelength = %0.2f micrometer',lambda);
printf('\n Cutoff wavelength = %0.1f micrometer',lambdac);

disp('Since operating wavelength is greater than cutoff wavelength, it is single moded at this wavelength.')
