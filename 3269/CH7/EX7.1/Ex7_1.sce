// Example 7.1
clear all;
clc;

// Using the data form Table 6.3 at temperature = 20 deg 
n_T = 2.065;              // Average number of neutrons produced per neutron absorbed in fission
// Using the data from Table 7.1
t_dM = 2.1e-4;            // The mean diffusion time of the moderator in seconds
k_inf = 1;                // The reactor is critical
f = k_inf/n_T;            // Thermal utilization factor
// Calculation
t_d = t_dM*(1-f);
l_p = t_d;
// Result
printf(" \n The prompt neutron lifetime = %3.2E seconds \n",l_p);
