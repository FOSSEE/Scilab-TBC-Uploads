// Example 12_6
clc;funcprot(0);
// Given data
T_1=25;// °C
P=1;// atm
T_2=600;// K
// The combustion equation C_3H_8+5(O_2+3.76N_2)--->3CO_2+4H_2O(l)+18.8N_2
N_CO2=3;// mol
N_H2O=4;// mol
N_N2=18.8;// mol
hbar0_fp=-103850;// kJ/kmol (C_3H8)
hbar0_fCO2=-393520;// kJ/kmol
hbar_CO2=22280;// kJ/kmol
hbar0_CO2=9360;// kJ/kmol
hbar0_fH2O=-241810;// kJ/kmol
hbar_H2O=20400;// kJ/kmol
hbar0_H2O=9900;// kJ/kmol
hbar0_fN2=0;// kJ/kmol
hbar_N2=17560;// kJ/kmol
hbar0_N2=8670;// kJ/kmol

// Calculation
Q=(N_CO2*(hbar0_fCO2+hbar_CO2-hbar0_CO2))+(N_H2O*(hbar0_fH2O+hbar_H2O-hbar0_H2O))+(N_N2*(hbar0_fN2+hbar_N2-hbar0_N2))-(hbar0_fp);// The required heat transfer in kJ/kmol fuel
printf("\nThe required heat transfer,Q=%7.0f kJ/kmol fuel",Q);
