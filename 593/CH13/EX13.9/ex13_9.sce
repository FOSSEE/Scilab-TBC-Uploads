clear;
//clc();

// Example 13.9
// Page: 363
printf("Example-13.9  Page no.-363\n\n");

//***Data***//
T = 298.15;//[K] Temperature
P_0 = 1;//[atm]
P = 100;//[atm]
E_0 = -1.229;//[V]
F = 96500;//[(coulomb)/(mole*electrons)] faraday constant
R = 8.314;//[J/(mol*K)] universal gas constant 

// The reaction is 
// H2O(l) = H2(g) + 1/2O2(g)
// number of the valence electrons transferred in this reaction is 
n_e = 2;//[(mole electrons)/mole]

// Gibb's free energy is given by
// g = g_0 + integrate(dg/dP)*dP, at constant temperature with integration limit P_0 and P
// or
// g = g_0 + integrate(v_T)*dP
// In the rightmost term we replace v_T by (R*T)/P, which is correct only for ideal gases, so
// g = g_0 + (R*T)*log(P/P_0)

// According to the assumption ,we can ignore the change in Gibb's free energy with pressure of the liquid water, so that 
// delta_g = delta_g_0 + 1.5*(R*T)*log(P/P_0)

// and 
// E = (-delta_g)/(n_e*F) = -(delta_g_0 + 1.5*(R*T)*log(P/P_0))/(n_e*F)
// So equilibrium cell voltage is given as 
E = E_0 - 1.5*(R*T)*log(P/P_0)/(n_e*F);

printf("The equilibrium cell voltage of electrolytic cell if feed and product are at the pressure 100 atm is %f Volt",E);







