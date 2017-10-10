// Example no. 2.13
// To calculate the propagation constant
// Page no. 82

clc;
clear;

// Given data
lambda0=1550*10^-9;                                          // wavelength in meter
beta0=6*10^6;                                                // propagation constant in rad/m
lambda1=1551*10^-9;                                          // wavelength in meter
beta1=0.5*10^-8;                                             // inverse group velocity in sec/meter
beta2=-10*10^-24;                                            // second-order dispersion coefficient in sec^2/km
c=3*10^8;                                                    // Speed of ligth in m/s
omega0=(2*%pi*c)/lambda0;                                    // Radial frequency at lambda0
omega1=(2*%pi*c)/lambda1;                                    // Radial frequency at lambda1
omega=omega1-omega0;

// The propagation constant at 1551nm wavelength
betaomega1=(beta0+beta1*omega+beta2*omega^2/2);        // Propagation constant at 1551nm wavelength

// Displaying the result in command window
printf('\n The propagation constant at 1551nm wavelength = %0.4f X 10^6 rad/s',betaomega1*10^-6);

