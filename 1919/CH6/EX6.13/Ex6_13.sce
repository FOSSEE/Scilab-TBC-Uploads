
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 13

clear ;clc;

//Given data
T1 = 1273.15            // product leaving temperature in K
Ta = 298.15             // ambient temperature in K
T_ai = 298.15           // air entering reactor temperature in K
P_ai = 0.5              // air entering reactor pressure in MPa
T_ao = 573.15           // hot air leaving reactor temperature in K
P_ao = 0.1              // hot air leaving reactor pressure in MPa
m = 5000                // product produced per hour by reactor in kg
Cp = 1                  // specific heat capacity of product in kJ/kg K

// Calculations
// a) maximum work that can be obtained from product
// W = Q_P - Ta*del_S         // maximum work obtainable = available energy
Q_P = m*Cp*(T1-Ta)             
del_S_P = m*Cp*log(T1/Ta)     // Change in entrophy of product
W_P = Q_P - Ta*del_S_P        // Maximum work done in kJ

// b) maximum work that can be obtained from hot air
//Q_A = Q_P = m_a*Cp*(T_ao-T_ai)
m_a = Q_P/(Cp*(T_ao-T_ai))           // mass of air in kg
del_S_a = m_a*Cp*log(T_ao/T_ai)      // entrophy of air   
W_A = Q_P - T_ai*del_S_a             // work done by air

// c) loss in available energy 
L_E = W_P - W_A


// Output Results
mprintf('(a) The maximum amount of work that can be done if reactor product is fed to heat engine = %4.4f E+06 kJ' ,W_P/1e6);
mprintf('\n (b) The maximum amount of work  that can be done by hot air = %4.4f E+06 kJ' ,W_A/1e6);
mprintf('\n (c) Loss in available energy = %4.2f E+06 kJ' ,L_E/1e6);

