// Example 12_10
clc;funcprot(0);
// Given data
T=25;// °C
P=1;// atm
// The combustion equation C_3H_8+12.5(O_2+3.76N_2)--->3CO_2+4H_2O+7.5O_2+47N_2
N_p=1;// mol
N_CO2=3;// mol
N_H2O=4;// mol
N_N2=47;// mol
N_O2=7.5;// mol
hbar0_fp=-103850;// kJ/kmol (C_3H_8)
hbar0_fCO2=-393520;// kJ/kmol
hbar0_CO2=9360;// kJ/kmol
hbar0_fH2O=-241810;// kJ/kmol
hbar0_H2O=9900;// kJ/kmol
hbar0_fN2=0;// kJ/kmol
hbar0_N2=8670;// kJ/kmol
hbar0_fO2=0;// kJ/kmol
hbar0_O2=8680;// kJ/kmol
Q=0;// kJ/kmol
H_R=-103850;// kJ/kmol fuel

// Calculation
H_P=H_R;
hbar_p=((H_R-((N_CO2*(hbar0_fCO2))+(N_H2O*(hbar0_fH2O))))/61.5)+hbar0_N2;// kJ/kmol
// Suggests T_P=1380 K
T_P1=1380;// K
hbar_CO2=64120;// kJ/kmol
hbar_H2O=52430;// kJ/kmol
hbar_N2=42920;// kJ/kmol 
hbar_O2=44920;// kJ/kmol
H_P1=(N_CO2*(hbar0_fCO2+hbar_CO2-hbar0_CO2))+(N_H2O*(hbar0_fH2O+hbar_H2O-hbar0_H2O))+(N_O2*(hbar0_fO2+hbar_O2-hbar0_O2))+(N_N2*(hbar0_fN2+hbar_N2-hbar0_N2));// The enthalpy of the products of combustion in kJ/kmol fuel
// The temperature is obiviously too high.We select aa lower value,T_p=1300 K
T_P2=1300;// K
hbar_CO2=59520;// kJ/kmol
hbar_H2O=48810;// kJ/kmol
hbar_N2=40170;// kJ/kmol 
hbar_O2=44030;// kJ/kmol
H_P2=(N_CO2*(hbar0_fCO2+hbar_CO2-hbar0_CO2))+(N_H2O*(hbar0_fH2O+hbar_H2O-hbar0_H2O))+(N_O2*(hbar0_fO2+hbar_O2-hbar0_O2))+(N_N2*(hbar0_fN2+hbar_N2-hbar0_N2));// The enthalpy of the products of combustion in kJ/kmol fuel
T_P=T_P2-([(-H_P+H_P2)/(H_P1-H_P2)]*(T_P1-T_P2));// K
printf("\nThe adiabatic flame temperature in the steady-flow combustion chamber,T_P=%4.0f K",T_P);
