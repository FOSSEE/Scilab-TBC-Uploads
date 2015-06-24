// Scilab code Exa10.7 : : Page-457 (2011)
clc; clear;
lambda = 1e-016;        // Disintegration constant, per sec
phi = 10^11;              // Neutron flux, neutrons per square cm per sec
sigma = 5*lambda/(phi*10^-27);             // Cross section, milli barns
printf("\nThe cross section for neutron induced fission = %d milli barns", sigma);

// Result
// The cross section for neutron induced fission = 5 milli barns 