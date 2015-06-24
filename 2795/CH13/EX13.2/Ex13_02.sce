// Scilab Code Ex13.2: Page-480(2014)
clc; clear;
sigma_n = 3;    // Differential cross setion of production of the neutron, mb/sr
sigma_p = 0.2;    // Differential cross setion of production of the proton, mb/sr
// As P_n = sigma_n and P_p = sigma_p, so
P_ratio = sigma_n/sigma_p;    // The likelihood of a neutron production than a proton
printf("\nThe likelihood of the neutron production than the proton = %2d", P_ratio);

// Result
// The likelihood of the neutron production than the proton = 15 