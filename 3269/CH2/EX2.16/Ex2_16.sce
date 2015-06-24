// Example 2.16
clear all;
clc;

// Given data
rho_UO2 = 10.5;                             // Density of UO2 pellets in gram/cm^3
nr = 0.3;                                   // Enrichment(w/o) of Uranium-235
// From standard data table
M_U235 = 235.0439;                          // Atomic weight of Uranium-235
M_U238 = 238.0508;                          // Atomic weight of Uranium-238
M_O = 15.999;                               // Atomic weight of Oxygen
NA = 0.6022*10^24;                          // Avogodro number

M = 1/((nr/M_U235)+((1-nr)/M_U238));
M_UO2 = M+(2*M_O);                          // Molecular weight of UO2
nr_U = M/M_UO2*100;                         // The percent(w/o) of Uranium in UO2 pellet
rho_U = nr_U*rho_UO2/100                    // Density of Uranium in g/cm^3
rho_U235 = nr*rho_U                         // Density of Uranium-235 in g/cm^3
// Calculation
N_U235=rho_U235*NA/M_U235;
// Result
printf("Atom density of Uranium-235 = %5.2E atoms/cm^3 \n",N_U235);

