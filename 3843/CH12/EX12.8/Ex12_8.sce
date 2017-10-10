// Example 12_8
clc;funcprot(0);
// Given data
T_O=25;// °C
P=1;// atm
T_1=1000;// K
// The combustion equation C_8H_18(l)+12.5(O_2+3.76N_2)--->8CO_2+9H_2O(l)+47N_2
// For 300% excess theoretical air,the reaction is C_8H_18(l)+50(O_2+3.76N_2)--->8CO_2+9H_2O(l)+37.5O_2+188N_2
N_CO2=8;// mol
N_H2O=9;// mol
N_N2=188;// mol
N_O2=37.5;// mol
hbar0_fO=-249910;// kJ/kmol (C_8H18)
hbar0_fCO2=-393520;// kJ/kmol
hbar_CO2=42770;// kJ/kmol
hbar0_CO2=9360;// kJ/kmol
hbar0_fH2O=-241810;// kJ/kmol
hbar_H2O=35880;// kJ/kmol
hbar0_H2O=9900;// kJ/kmol
hbar0_fN2=0;// kJ/kmol
hbar_N2=30130;// kJ/kmol 
hbar0_N2=8670;// kJ/kmol
hbar0_fO2=0;// kJ/kmol
hbar_O2=31390;// kJ/kmol
hbar0_O2=8680;// kJ/kmol

// Calculation
H_P=(N_CO2*(hbar0_fCO2+hbar_CO2-hbar0_CO2))+(N_H2O*(hbar0_fH2O+hbar_H2O-hbar0_H2O))+(N_O2*(hbar0_fO2+hbar_O2-hbar0_O2))+(N_N2*(hbar0_fN2+hbar_N2-hbar0_N2));// The enthalpy of the products of combustion in kJ/kmol fuel
H_R=hbar0_fO;// The enthalpy of the reactants of combustion in kJ/kmol fuel
Q=H_P-H_R;// The heat transfer in kJ/kmol fuel
printf("\nThe heat transfer,Q=%6.0f kJ/kmol fuel",Q);
