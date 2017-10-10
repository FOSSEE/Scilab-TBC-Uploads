// Example 12_5
clc;funcprot(0);
// Given data
T=25;// °C
P=1;// atm
// Assuming theoretical air C_3H_8+5(O_2+3.76N_2)--->3CO_2+4H_2O(l)+18.8N_2
N_CO2=3;// mol
N_H2O=4;// mol
N_N2=18.8;// mol
// From table B-7
hbar0_fp=-103850;// kJ/kmol (C_3H_8)
hbar_fgp=15060;// kJ/kmol (C_3H_8)
hbar0_fCO2=-393520;// kJ/kmol
hbar0_fH2O=-285830;// kJ/kmol

// Calculation
Q_gp=(N_CO2*hbar0_fCO2)+(N_H2O*hbar0_fH2O)-hbar0_fp;// The enthalpy of combustion of gaseous propane in kJ/kmol fuel
Q_lp=(N_CO2*hbar0_fCO2)+(N_H2O*hbar0_fH2O)-(hbar0_fp-hbar_fgp);// The enthalpy of combustion of liquid propane in kJ/kmol fuel
printf("\nThe enthalpy of combustion of gaseous propane,Q=%7.0f kJ/kmol fuel \nThe enthalpy of combustion of liquid propane,Q=%7.0f kJ/kmol fuel",Q_gp,Q_lp);
