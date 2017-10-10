// Example 15_6
clc;funcprot(0);
// Given data
h_f_CO2=393.522;// MJ/kgmole
h_f_H2O_g=241.827;//MJ/kgmole
h_f_H2O_l=285.838;// MJ/kgmole
HHV_CH4=-890.4;// MJ/kgmole

// Calculation
n=1;// The stoichiometric coefficient for the reaction
m=4;// The stoichiometric coefficient for the reaction
q_f=-[(n*h_f_CO2)+((m/2)*h_f_H2O_l)+HHV_CH4];// MJ/kgmole of CH_4
printf("\nThe heat of formation of methane gas CH4(g) at the standard reference state,(qbar_f)_CH4=%2.1f MJ/kgmole of CH_4",q_f);
