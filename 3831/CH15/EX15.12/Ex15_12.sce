// Example 15_12
clc;funcprot(0);
// Given data
T=25.0+273;// K
p_m=0.100;// MPa
T_b=200+273;// K
q_r=-134.158;// MJ
R=8.3143;// kJ/(kgmole.K)

// Calculation
// The reaction equation for 100.% theoretical air is CH4+2O2+3.76N2-->CO2+2(H2O)+7.52(N2)
n_CH4=1;// The stoichiometric coefficient of the reaction
n_O2=2;// The stoichiometric coefficient of the reaction
n_N2=7.52;// The stoichiometric coefficient of the reaction
n_R=(n_CH4+n_O2+n_N2);// The stoichiometric coefficient of the reaction
p_CH4=(n_CH4/n_R)*p_m;// kPa
p_O2=(n_O2/n_R)*p_m;// kPa
p_N2=(n_N2/n_R)*p_m;// kPa
n_CO2=1;// The stoichiometric coefficient of the reaction
n_H2O=2;// The stoichiometric coefficient of the reaction
n_N2=7.52;// The stoichiometric coefficient of the reaction
n_P=(n_CO2+n_H2O+n_N2);// The stoichiometric coefficient of the reaction
p_CO2=(n_CO2/n_P)*p_m;// kPa
p_H2O=(n_H2O/n_P)*p_m;// kPa
p_N2=(n_N2/n_P)*p_m;// kPa
s0_CH4=186.256;// kJ/(kgmole.K)
s0_O2=205.138;// kJ/(kgmole.K)
s0_N2=191.610;// kJ/(kgmole.K)
sbar_CH4=s0_CH4-(R*log(p_CH4/p_m));// kJ/(kgmole.K)
sbar_O2=s0_O2-(R*log(p_O2/p_m));// kJ/(kgmole.K)
sbar_N2=s0_N2-(R*log(p_N2/p_m));// kJ/(kgmole.K)
sbar_iR=(n_CH4*sbar_CH4)+(n_O2*sbar_O2)+(n_N2*sbar_N2);// kJ/(kgmole.K)
s0_CO2=213.795;// kJ/(kgmole.K)
s0_H2O=188.833;// kJ/(kgmole.K)
s0_N2=191.610;// kJ/(kgmole.K)
c_p_CO2=37.19;// kJ/(kgmole.K)
c_p_H2O=33.64;// kJ/(kgmole.K)
c_p_N2=29.08;// kJ/(kgmole.K)
sbar_CO2=s0_CH4+(c_p_CO2*log(T_b/T))-(R*log(p_CO2/p_m));// kJ/(kgmole.K)
sbar_H2O=s0_O2++(c_p_H2O*log(T_b/T))-(R*log(p_H2O/p_m));// kJ/(kgmole.K)
sbar_N2=s0_N2+(c_p_N2*log(T_b/T))-(R*log(p_N2/p_m));// kJ/(kgmole.K)
sbar_iP=(n_CO2*sbar_CO2)+(n_H2O*sbar_H2O)+(n_N2*sbar_N2);// kJ/(kgmole.K)
sbar_p_r=sbar_iP-sbar_iR-((q_r*10^3)/T_b);// kJ/(kgmole.K)
printf("\nThe entropy produced per mole of fuel,(sbar_p)_r=%3.0f kJ/(kgmole.K)",sbar_p_r);
