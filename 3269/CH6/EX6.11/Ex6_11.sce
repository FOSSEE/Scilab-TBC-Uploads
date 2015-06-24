// Example 6.11
clear all;
clc;

// Using the data from Table 3.2
g_a25=0.978;             // Non 1/v factor Uranium-235 fuel for absorption
g_f25=0.976;             // Non 1/v factor Uranium-235 fuel for fission
g_a28=1.0017;            // Non 1/v factor Uranium-238 fuel for absorption

v_25=2.42;               // Average number of neutrons in one fission of Uranium-235
// Using the data from Table II.3 for microscopic absorption and fission cross section 
sigma_a25=681;           // Microscopic absorption cross section of Uranium-235 in barns
sigma_a28=2.7;           // Microscopic absorption cross section of Uranium-238 in barns
sigma_f25=582;           // Microscopic fission cross section of Uranium-235 in barns

// Using the data of atom density of uranium and let N_28/N_25= N
N = 138;
// Calculation
n_T = (v_25*sigma_f25*g_f25)/((sigma_a25*g_a25)+(N*sigma_a28*g_a28));
// Result
printf("\n Average number of neutrons produced per neutron absorbed in fission = %3.2f \n",n_T);

