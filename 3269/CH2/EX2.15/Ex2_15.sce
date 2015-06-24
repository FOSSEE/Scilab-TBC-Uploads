// Example 2.15
clear all;
clc;

// Given data 
rho = 19.1;                                 // Density of Uranium-235 in gram/cm^3
wt = 1500;                                  // Weight of uranium rods in a reactor in kg
nr = 0.2;                                   // Enrichment(w/o) of Uranium-235

// 1.
// As Enrichment is 20(w/o)
wt_U235 = nr*wt;                            // Amount of Uranium-235
// Result
printf("Amount of Uranium-235 in the reactor = %d kg \n",wt_U235);

// 2.
// From standard data table
NA = 0.6022*10^24;                          // Avagodro number
M_U235 = 235.0439;                          // Atomic weight of Uranium-235
M_U238 = 238.0508;                          // Atomic weight of Uranium-238
// Calculation
N_U235 = nr*rho*NA/M_U235;                  // Atom density of Uranium-235
N_U238 = (1-nr)*rho*NA/M_U238;              // Atom density of Uranium-238
// Result
printf("Atom density of Uranium-235 = %5.2E atoms/cm^3 \n",N_U235);
printf("Atom density of Uranium-238 = %5.2E atoms/cm^3 \n",N_U238);
