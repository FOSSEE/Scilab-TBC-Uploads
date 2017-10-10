// Example 15_8
clc;funcprot(0);
// Given data
// For 100.% theoretical air, the combustion equation for methane is,CH_4+2.00[O_2+3.76 N_2]-->CO_2+2.00(H_2O)+7.52(N_2)
// From Table 15.1, we find that
h_f_CH4=-74.873;// MJ/kgmoleCH4
h_R=-74.873;// MJ/kgmoleCH4
h_f_N_2=0;// MJ/kgmole N2
h_f_CO2=-393.522;// MJ/kgmole CO2
h_f_H2O_g=-241.827;// MJ/kgmole H2O_g
h_f_H2O_l=-285.838;// MJ/kgmole H2O_l

// Calculation
h_p_LHV=h_f_CO2+(2*h_f_H2O_g)+(7.52*h_f_N_2);// MJ/kgmole CH4
h_p_HHV=h_f_CO2+(2*h_f_H2O_l)+(7.52*h_f_N_2);// MJ/kgmole CH4
LHV=h_p_LHV-h_R;// MJ/kgmole CH4
HHV=h_p_HHV-h_R;// MJ/kgmole CH4
h_fg_H2O=44.00;// MJ/kgmole CH4
n_H2O=2.00;// The stoichiometric coefficient for the reaction
n_fuel=1.00;// The stoichiometric coefficient for the reaction
HHV=LHV-((n_H2O/n_fuel)*h_fg_H2O);// MJ/kgmole CH4
printf("\nThe higher heating value of methane,LHV=%3.2f MJ/kgmole CH4 \nThe lower heating value of methane,HHV=%3.2f MJ/kgmole CH4",HHV,LHV);
