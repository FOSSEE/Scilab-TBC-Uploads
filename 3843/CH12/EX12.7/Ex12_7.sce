// Example 12_7
clc;funcprot(0);
// Given data
T_o=25;// °C
P=1;// atm
T_1=600;// K
T_2=1000;// K
// The combustion equation C_8H_18(l)+12.5(O_2+3.76N_2)--->8CO_2+9H_2O(l)+47N_2
N_CO2=8;// mol
N_H2O=9;// mol
N_N2=47;// mol
N_O2=12.5;// mol
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
hbar_O2=17930;// kJ/kmol
hbar0_O2=8680;// kJ/kmol
M_CO2=44;// The molecular weight of carbon dioxide in kg/kmol
M_H2O=18;// The molecular weight of H2O in kg/kmol
M_N2=28;// The molecular weight of nitrogen in kg/kmol

// Calculation
H_P=(N_CO2*(hbar0_fCO2+hbar_CO2-hbar0_CO2))+(N_H2O*(hbar0_fH2O+hbar_H2O-hbar0_H2O))+(N_N2*(hbar0_fN2+hbar_N2-hbar0_N2));// The enthalpy of the products of combustion in kJ/kmol fuel
// From table F_2 andF_3   
hbar_N2=17560;// kJ/kmol (at 600 K for reactants)
H_R=(hbar0_fO)+(N_O2*(hbar0_fO2+hbar_O2-hbar0_O2))+(N_N2*(hbar0_fN2+hbar_N2-hbar0_N2));// The enthalpy of the reactants of combustion in kJ/kmol fuel
M_P=(N_CO2*M_CO2)+(N_H2O*M_H2O)+(N_N2*M_N2);// The mass of the products in kg/kmol fuel
V=sqrt((2/M_P)*(H_R-H_P));// The exit velocity in m/s
printf("\nThe exit velocity,V=%2.0f m/s",V);
// The answer provided in the textbook is wrong
