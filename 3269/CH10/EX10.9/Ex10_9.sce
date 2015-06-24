// Example 10.9
clear all;
clc;

// Given data
// Assuming average energy produced per fission reaction is 200 MeV 
P = 55;                                         // Power density of reactor in watts/cm^3
rho_eff_U = 0.33;                               // Effective density of uranium in g/cm^3
rho_eff_W = 1-rho_eff_U;                        // Effective density of water in g/cm^3
t_i = 3;                                        // Average time spent by water in the reactor in seconds
t_0 = 2;                                        // Average time spent by water in the external coolant circuit in seconds
// 1 eV = 1.6*10^(-19) J
P_fission = 200*10^6*1.6*10^(-19);              // Energy produced in a fission reaction in terms of joule
fission_density = P/P_fission;                  // Number of fission reactions
v = 2.42;                                       // Number of fission neutrons emitted per fission
S = v*fission_density;                          // Strength of neutron source in terms of neutrons/cm^2-sec
// Atom density of oxygen at normal density of 1 g/cm^3 is
rho = 1;                                        // Density of water in g/cm^3
N_A = 6.02*10^(23);                             // Avogadro's constant
M = 18;                                         // Molecular weight of water
atom_density = (rho*N_A)/M;

// Using the data from Table 10.7
sigma_r = 1.9*10^(-5)*10^(-24);                 // Reaction cross section in cm^2
T_12 = 7.1;                                     // Half life of the given reaction in seconds
lambda = 0.693/T_12;                            // Decay constant of the given reaction in seconds^(-1)
sigma_act = rho_eff_W*atom_density*sigma_r;     // Average macroscopic activation cross section
// Using the data from Table 10.4
sigma_RW = 0.103;                               // Removal cross section of water in cm^-1
sigma_RU = 0.174;                               // Removal cross section of Uranium in cm^-1
sigma_R = (sigma_RU*rho_eff_U)+(sigma_RW*rho_eff_W);    // Removal cross section of mixture
// Let activation rate given by (sigma_act*phi_av) be denoted as AR
AR = (sigma_act*S)/sigma_R;
// Calculation
alpha = AR*(1-exp(-t_i*lambda))/(1-exp(-(t_i+t_0)*lambda));
// 1 curie = 3.7*10^(10) disintegrations/sec
// Result
printf("\n Equilibrium activity of water due to neutron capture of oxygen = %.2E disintegrations/cm^3-sec or %d uCi/cm^3 \n",alpha,ceil(alpha*10^6/(3.7*10^10)));


