// Theory and Problems of Thermodynamics
// Chapter 2
// First Law of Thermodynamics
// Example 4

clear ;clc;

//Given data
T = 303          // initial temperature in K
P = 100          // initial pressure in kPa
V_w = 0.001004   // specific volume  for water in m3/kg
V_v = 1.694910   // specific volume  for vapor in m3/kg
H_w = 125.6      // enthalpy of water in kJ/kg
H_v = 2675.47    // enthalphy of vapor in kJ/kg

// determine heat and work interactions
W = P * (V_v - V_w);    // work interaction
del_H = H_v - H_w       // enthalpy difference
Q = del_H               //heat interaction

// Results
mprintf('Work interaction = %7.2f kJ', W)
mprintf('\n Heat interaction = %5.2f kJ', Q)


