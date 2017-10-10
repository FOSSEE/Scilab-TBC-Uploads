// Example 15_18
clc;funcprot(0);
// Given data
T=25.0;// °C
p=0.100;// MPa
g_f_H2O=-237.178;// MJ/kgmole
h_f_H2O=-285.838;// MJ/kgmole
j=2;// kgmole of electrons per kgmole of H2
F=96487;// kJ/(V.kgmole electrons)

// Calculation
n_H2=1;// The stoichiometric coefficient of the reaction
n_H2O=1;// The stoichiometric coefficient of the reaction
n_r_max=g_f_H2O/h_f_H2O;// The maximum reaction efficiency
phi_0=([-(n_H2O/n_H2)*(h_f_H2O*10^3)]*[n_r_max])/(j*F);// The theoretical open circuit voltage in V
W_maxbyn_fuel=phi_0*j*F;// kJ/kgmoleH2
printf("\nThe maximum theoretical reaction efficiency,(n_r)max=%2.1f percentage \nThe theoretical open circuit voltage,V=%1.2f V \nThe maximum theoretical work output,W_max/n_fuel=%6.0f kJ/kgmole H2",n_r_max*100,phi_0,W_maxbyn_fuel);
