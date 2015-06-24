clear;
//clc();

// Example 12.1
// Page: 311
printf("Example-12.1  Page no.-311\n\n");

//***Data***//
T = 298.15;//[K] temperature
P = 1;//[atm] pressure 
R = 8.314*10^(-3);//[kJ/(mol*K)]

// For an ideal binary solution the Gibbbs free energy is given by
// g_mix = summation(x_i*g_i_0) + R*T*summation(x_i*log(x_i))
// Differentiating the above equation with respect to x_a , remembering that for a binary mixture dx_b = dx_a, finding

// dg_mix/dx_a = g_a_0-g_b_0+R*T*[log(x_a)+1-(log(x_b)+1)]
// and x_a+x_b = 1
// so
// dg_mix/dx_a = g_a_0-g_b_0+R*T*[log(x_a/(1-x_a))]

// setting up this equal to zero ( to find the minimum on the g-x curve ) and solving gives
// x_a/(1-x_a) = exp((g_b_0-g_a_0)/(R*T))

// From the table A.8 (page 427) reported in the book, pure component Gibbs free energies for isobutane,a,and n-butane,b, we find
g_a_0 = -20.9;//[kJ/mol]
g_b_0 = -17.2;//[kJ/mol]

// Now solving the above equation for x_a, we have
x_a = exp((g_b_0-g_a_0)/(R*T))/(1+exp((g_b_0-g_a_0)/(R*T)));
x_b = 1-x_a;
printf(" The chemical equilibrium composition of the gaseous mixture contains %f mol fraction isobutane\n \t\t\t\t\t\t\t\tand %f mol fraction n-butane",x_a,x_b);



