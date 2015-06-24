// Scilab Code Ex11.12: Page-569 (2011)
clc;clear;
sigma = 3.54e+007;....// Electrical conductivity of Al, mho per metre 
mu = 12.56e-007;....// Permeability of the medium, weber/A-m
f = 71.6e+06;    // Frequency of the wave, Hz
omega = 2*%pi*f;....// Angular frequency of the wave, rad per sec
delta = sqrt(2/(sigma*mu*omega));    // Skin depth of the EM wave in Al, m
printf("\nThe skin depth of an EM-wave in Al = %2.0f micron", delta/1e-06); 

// Result
// The skin depth of an EM-wave in Al = 10 micron 
