
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 17

clear ;clc;

//Given data
rp = 6              // pressure ratio of Brayton cycle
T1 = 300            // initial temperature of air in K
P1 = 0.1            // initial pressure of air in MPa
T3 = 1200           // final  temperature of air in K
R = 8.314           // gas constant
Cp = 3.5*R          // molar heat capacity at constant pressure in kJ/kg K
gam = 1.4           // heat  capacity ratio

// calculations 
n = 1-1/(rp^((gam-1)/gam))    // Thermal efficiency of cycle
T2 = T1*(rp^((gam-1)/gam))
q1 = Cp * (T3-T2)*1e-3        // in kJ/mol 
W = n*q1                      // work done per mole of air in kJ/mol

// Output Results
mprintf('Thermal efficiency of Brayton cycle = %4.1f' ,n);
mprintf('\n Work done per mole of air = %4.3f kJ/mol' ,W);
