// Example 12_5
clc;funcprot(0);
// Given data
T_m1=20.0+273.15;// K
p_m1=0.101;// MN/m^2
p_m2=1.08;// MN/m^2
k_m=1.66;// The specific heat ratio of the mixture
c_pm=4.61;// kJ/kg.K

// Calculation
T_m2=T_m1*((p_m2/p_m1)^((k_m-1)/k_m));// K
T_m2C=T_m2-273.15;// °C
Wbym_m=c_pm*(T_m1-T_m2);// kJ/kg
printf("\nThe power per unit mass flow rate required to isentropically compress the helium-oxygen mixture,Wdot/mdot_m=%4.0f kJ/kg",Wbym_m);
// The answer provided in the textbook is wrong
