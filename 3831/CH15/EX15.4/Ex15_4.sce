// Example 15_4
clc;funcprot(0);
// Given data
m_H2O=9.00;// moles
m_m=109;// moles
p_t=14.7;// The total pressure of the mixture in psia

// Calculation
X_H2O=m_H2O/m_m;// The mole fraction
p_H2O=X_H2O*p_t;// psia
// By interpolation in Table C.1a in Thermodynamic Tables to accompany Modern Engineering Thermodynamics, we find that
T_DP=108;// °F
T_DP=(108-32)/1.8;// °C
printf("\nThus, the exhaust products must be cooled to %3.0f°F(%2.1f°C)or below to condense the water of combustion and have an essentially dry exhaust gas.",(T_DP*1.8+32),T_DP);
