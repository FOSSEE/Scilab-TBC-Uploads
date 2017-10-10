// Example no.5.1
// To calculate (a) the photon incidence rate, (b) the photon absorption rate, and, (c) the quantum efficiency.
// Page no.196

clc;
clear all;
// Given data
lambda=550*10^(-9);                         // The wavelength of electromagnetic wave in m
c=3*10^8;                                   // Speed of ligth in air
h=6.626*10^(-34);                           // Planck's constant
alpha=10^4;                                 // absorption coefficient
W=3*10^-4;                                  // width of the active region
Pi=1*10^-9;                                 // optical power
eta=0.9;                                    // the fraction of photocarriers that contribute to the photocurrent
Rp=0;                                       // the power transmission coefficient at the air–semiconductor interface

// (a) the photon incidence rate
Eph=(h*c)/lambda;                          // The energy of a photon
Rincident=Pi/Eph;                          // The photon incidence rate

// Display result on command window
printf('\n The photon incidence rate = %0.2f X 10^9 photon/s',Rincident*10^-9);

// (b) the photon absorption rate
Rabs=(Rincident*(1-exp(-alpha*W)));        // The photon absorption rate

// Display result on command window
printf('\n The photon absorption rate = %0.2f X 10^9 photon/s',Rabs*10^-9)

//c) the quantum efficiency
neta=(1-Rp)*eta*(1-exp(-alpha*W));          // The quantum efficiency

// Display result on command window
printf('\n The quantum efficiency = %0.3f',neta)
