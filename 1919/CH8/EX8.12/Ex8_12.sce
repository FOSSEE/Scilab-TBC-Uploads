
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 12

clear ;clc;

//Given data
T1 = 300              // minimum temperature of air in K
P1 = 0.1              // minimum pressure of air in MPa
T3 = 2200             // maximum temperature of air in K
P3 = 5.0              // maximum pressure of air in MPa
Cv = 0.7176           // specific heat ratio at constant volume in kJ/kg K
gam = 1.4             // heat capacity ratio

// calculations 
r0 =P3*T1/(T3*P1)           // Otto cycles  
n = 1-(1/r0)^(gam-1)        // Thermal efficiency of cycle
T2 = T1*(r0)^(gam-1)        

q1 = Cv * (T3-T2)

W = n*q1                // work done per kg of air


// Output Results
mprintf('Thermal efficieny = %4.3f ' ,n);
mprintf('\n work done per kg of air = %4.1f kJ/kg' ,W);
