clear;
clc;

// Illustration 1.24
// Page: 63

printf('Illustration 1.24 - Page:63 \n\n');
// Solution

//*****Data*****//
//   a-nitrogen
P_atm = 1.01325*10^5; // [Pa]
T = 300; // [K]
P_2 = 10130; // [Pa]
P_1 = 500+P_2; // [Pa]
d = 0.01*10^-2; // [average pore diameter, m]
u = 180; // [micro Poise]
u = 180*10^-6*10^-1; // [Pa.s]  
l = 25.4*10^-3; // [m]
v = 0.05; // [volumetric flow rate,  cubic m/square m.s]
R = 8.314; // [cubic m.Pa/mole.K]
//*****//

printf('Illustration 1.24 (a) - Page:63 \n\n');
// Solution (a)

P_avg = (P_1+P_2)/2; // [Pa]
// The mean free path for nitrogen is from equation (1.102)
lambda = 0.622*10^-6; // [m]
K_n = lambda/d;
// Therefore, Knudsen diffusion will not occur and all the flow observed is of a hydrodynamic nature.

// From the ideal gas law, the nitrogen flux corresponding to the volumetric flow rate of 0.05 m3/m2-s at 300 K and 1 atm
 
N_a = P_atm*v/(R*T); // [mole/square m.s]
// Using equation 1.113
B_o = u*R*T*N_a*l/(P_avg*(P_1-P_2)); // [square m]
printf("The value of the viscous flow parameter is %e square m\n\n",B_o);

printf('Illustration 1.24 (b) - Page:64 \n\n');
// Solution (b)

T1 = 393; // [K]
u = 220; // [micro Poise]
u = 220*10^-6*10^-1; // [Pa.s]
// Substituting in equation (1.113) the new values of temperature and viscosity and the value of B_o, obtained in part (a) while maintaining the pressure conditi// ons unchanged, we get N_a
N_a1 = B_o*P_avg*(P_1-P_2)/(l*T*u*R); // [mole/square m.s]
v1 = N_a1*R*T/P_atm; // [cubic m(measured at 300 K and 1 atm)/ square m.s]
printf("The nitrogen flow to be expected at 393 K with the same pressure difference is %e cubic m(measured at 300 K and 1 atm)/ square m.s\n",v1);
