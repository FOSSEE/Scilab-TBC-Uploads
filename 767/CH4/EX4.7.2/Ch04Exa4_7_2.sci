// Scilab code Exa4.7.2: To determine the fission rate induced in the foil by neutron  : Page 190 (2011)
t = 0.15; // Thickness of the foil, Kg
N = 6.023e+026; // Number of nuclei in 1Kg of U-235, nuclei
N_1 = N/235*t; // Number of nuclei in 0.15Kg of U-235, nuclei
A = 2e-026; // Area present in each nucleus, m^2
I = 10^6; // Intensity ,s^-1 
F_r = N_1*A; // Rate of fissions induced in the foil by the neutrons, s^-1
printf("\n Rate of fissions induced in the foil by the neutrons: %5.3e per sec", F_r)
// Result  
//      Rate of fissions induced in the foil by the neutrons: 7.689e-003 per sec
