// Example 19_4
clc;funcprot(0);
// Given data
mu=1.50*10^-5;// The viscosity of the CO_2 in kg/(m.s)
T_1=300;// K
T_2=305;// K
k_p=1.00*10^-6;// m^2
k_o=2.00*10^4;// The osmotic heat conductivity in m^2/s

// Solution
dp=-((mu*k_o)/k_p)*log(T_2/T_1);// N/m^2
printf('\nThe steady state thermomolecular pressure difference across the membrane,p_2-p_1=%4.0f N/m^2',dp);
