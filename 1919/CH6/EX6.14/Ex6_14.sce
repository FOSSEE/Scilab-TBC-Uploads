
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 14

clear ;clc;

//Given data
m1 = 5000               // substance produced at unit 1 in kg
T1 = 1273.15            // unit 1 temperature in K
m2 = 5000               // substance produced at unit 1 in kg
T2 =  873.15            // unit 2 temperature in K
Tf =  313.15            // final temp as a source for heat engine in K
T0 = 298.15             // ambient temperature in K
Cp = 1                  // specific heat capacity of product in kJ/kg K

// Calculations
TE = (T1+T2)/2          // Equilibrium temperature
//AE = Q-T0*del_s       // Available energy of mixture
AE_m = (m1+m2)*Cp*(TE-Tf) - T0*(m1+m2)*Cp*log(TE/Tf)
// Available energy if products are used seperately
AE_s = m1*Cp*(T1-Tf)- T0*m1*Cp*log(T1/Tf) + m2*Cp*(T2-Tf)- T0*m2*Cp*log(T2/Tf)

AW = AE_s - AE_m        // Additional work obtainable by incorporating suggestion

// Output Results
mprintf('Additional work obtainable by incorporating suggestion = %4.2f kJ' ,AW);
