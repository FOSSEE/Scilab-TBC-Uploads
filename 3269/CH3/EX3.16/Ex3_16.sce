// Example 3.16
clear all;
clc;

// Given data
E = 0.8;                    // Average gamma ray energy in MeV
I = 3*10^(11);              // Intensity of gamma rays incident on the container in gamma rays/cm^2-sec
// Using the data given in Table II.5 for iron at 0.8 MeV
mup_iron = 0.0274;          // Ratio of mass attenuation coefficient to density of iron in cm^2/g
// Calculation 
dep_rate = E*I*mup_iron;
// Expressing the result in SI units
// 1 MeV = 1.6*10^(-13) J
// 1 kg = 1000 g
dep_rate_SI = dep_rate*(1.6*10^(-13)*1000);
printf('\n Rate of energy deposited = %3.2E MeV/g-sec or %.2f J/kg-sec \n',dep_rate,dep_rate_SI);
