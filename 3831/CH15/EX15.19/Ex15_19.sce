// Example 15_19
clc;funcprot(0);
// Given data
T=25;// °C
p=0.1;// MPa

// Calculation
n_H2=1;// The stoichiometric coefficient of the reaction
n_O2=0.5;// The stoichiometric coefficient of the reaction
n_H2O=1;// The stoichiometric coefficient of the reaction
g_f_H2O=-237.178;// MJ/kgmole
// [(abar_f)_i]_chemical=gbar0_i+RT ln[1].
abar_H2O=g_f_H2O;// MJ/kgmole
adot_fc=0+0-[(n_H2O/n_H2)*abar_H2O];// The net molar specific flow availability in MJ/kgmoleH2
printf("\nThe net molar specific flow availability of the hydrogen–oxygen fuel cell,(a_flow chemical)_net=%3.3f MJ/kgmoleH2",adot_fc);
