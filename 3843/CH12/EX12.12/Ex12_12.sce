// Example 12_12
clc;funcprot(0);
// Given data
A=2;// The surface area in m^2
U=0.5;// The over all heat transfer coefficient in kW/m^2.K
mdot_p=0.2;// The mass flow rate of propane in kg/s
M_p=44;// The molecular weight of the propane in kg/kmol
T_E=25+273;// K
P=1;// atm
// From example 12.11
// The combustion equation C_3H_8+5(O_2+3.76N_2)--->3CO_2+4H_2O+18.8N_2
N_CO2=3;// mol
N_H2O=4;// mol
N_N2=18.8;// mol
hbar0_fp=-103850;// kJ/kmol (C_3H_8)
hbar0_fCO2=-393520;// kJ/kmol
hbar0_CO2=9360;// kJ/kmol
hbar0_fH2O=-241810;// kJ/kmol
hbar0_H2O=9900;// kJ/kmol
hbar0_fN2=0;// kJ/kmol
hbar0_N2=8670;// kJ/kmol

// Calculation
mdot_fuel=mdot_p/M_p;// The molar influx in kg/s
M_CO2=N_CO2*mdot_fuel;// kmol/s
M_H2O=N_H2O*mdot_fuel;// kmol/s
M_N2=N_N2*mdot_fuel;// kmol/s
// LHS=Q+H_R
// RHS=H_P
// For a first guess at T_P let us assume a some what lower temperature than that of Example 12.11,since energy leaving the combustion chamber.The guesses follow
T_P1=1600;// K
LHS_1=(-U*A*(T_P1-T_E))+(mdot_fuel*hbar0_fp);// kJ/kmol fuel
hbar_CO2=76944;// kJ/kmol
hbar_H2O=62748;// kJ/kmol
hbar_N2=50571;// kJ/kmol 
RHS_1=(M_CO2*(hbar0_fCO2+hbar_CO2-hbar0_CO2))+(M_H2O*(hbar0_fH2O+hbar_H2O-hbar0_H2O))+(M_N2*(hbar0_fN2+hbar_N2-hbar0_N2));// The enthalpy of the products of combustion in kJ/kmol fuel
T_P2=2000;// K
LHS_2=(-U*A*(T_P2-T_E))+(mdot_fuel*hbar0_fp);// kJ/kmol fuel
hbar_CO2=100804;// kJ/kmol
hbar_H2O=82593;// kJ/kmol
hbar_N2=64810;// kJ/kmol 
RHS_2=(M_CO2*(hbar0_fCO2+hbar_CO2-hbar0_CO2))+(M_H2O*(hbar0_fH2O+hbar_H2O-hbar0_H2O))+(M_N2*(hbar0_fN2+hbar_N2-hbar0_N2));// The enthalpy of the products of combustion in kJ/kmol fuel
T_P3=1900;// K
LHS_3=(-U*A*(T_P3-T_E))+(mdot_fuel*hbar0_fp);// kJ/kmol fuel
hbar_CO2=94793;// kJ/kmol
hbar_H2O=77517;// kJ/kmol
hbar_N2=61220;// kJ/kmol 
RHS_3=(M_CO2*(hbar0_fCO2+hbar_CO2-hbar0_CO2))+(M_H2O*(hbar0_fH2O+hbar_H2O-hbar0_H2O))+(M_N2*(hbar0_fN2+hbar_N2-hbar0_N2));// The enthalpy of the products of combustion in kJ/kmol fuel
// Interpolation between the last two entries gives 
T_P=1970;// K
printf("\nThe temperature of products of combustion,T_P=%4.0f K",T_P);
