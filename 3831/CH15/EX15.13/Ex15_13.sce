// Example 15_13
clc;funcprot(0);
// Given data
T=25+273.15;// K
n_C=1;// The stoichiometric coefficient of the reaction
n_H2=2;// The stoichiometric coefficient of the reaction
n_CH4=1;// The stoichiometric coefficient of the reaction
sbar0_CH4=186.256;// kJ/kgmole.K
sbar0_C=5.740;// kJ/kgmole.K
sbar0_H2=130.684;// kJ/kgmole.K
h_f_CH4=-74.873;// MJ/kgmole.K

// Calculation
sbar0_f_CH4=sbar0_CH4-[((n_C/n_CH4)*sbar0_C)+((n_H2/n_CH4)*sbar0_H2)];// kJ/kgmole.K
gbar0_f_CH4=h_f_CH4-(T*sbar0_f_CH4*1/1000);// The specific molar Gibbs function of formation of methane in MJ/kgmole
printf("\nThe molar specific entropy of formation,(sbar0_f)_CH4=%2.3f kJ/kgmole.K \nThe specific molar Gibbs function of formation of methane,(gbar0_f)_CH4=%2.3f MJ/kgmole",sbar0_f_CH4,gbar0_f_CH4);
