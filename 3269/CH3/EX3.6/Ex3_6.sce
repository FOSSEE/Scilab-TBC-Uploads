// Example 3.6
clear all;
clc;

// Given data
sigmas_H_1 = 3;                 // Scattering cross section of Hydrogen in barn at 1 MeV
sigmas_O_1 = 8;                 // Scattering cross section of Oxygen in barn at 1 MeV
sigmas_H_th = 21;               // Scattering cross section of Hydrogen in barn at 0.0253 eV 
sigmas_O_th = 4;                // Scattering cross section of Oxygen in barn at 0.0253 eV
// Calculation
sigmas_H20_1 = (2*sigmas_H_1)+(1*sigmas_O_1);
// Result
printf('\n Scattering cross section of Water at 1 MeV = %d b \n',sigmas_H20_1);
// The equation used to calculate the scattering cross section at 1 MeV cannot be used at thermal energy. 
printf(' Experimental value of scattering cross section of Water at 0.0253 eV = %d b \n',103);
