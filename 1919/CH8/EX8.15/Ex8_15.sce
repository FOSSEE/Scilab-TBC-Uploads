// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 15

clear ;clc;

//Given data
T1 = 300             // intial temperature of air in K
P1 = 0.1             // initial pressure of air in MPa
P2 = 5.0             // final pressure of air in MPa
q1 = 20               // energy injected per mole of air in kJ
R = 8.314            // gas constant
Cp = 3.5*R           // specific heat ratio at constant pressure in kJ/kg K
gam = 1.4            // heat capacity ratio

// calculations 
r0 =(P2/P1)^(1/gam)          // Otto cycles  
T2 = T1*(r0)^(gam-1)        
//q1 = Cp * (T3-T2)
deff('y=temp(T3)', 'y = q1*1e3 - Cp*(T3-T2)') 
T3 = fsolve(10,temp)        // maximum cycle temperature

rc = T3/T2                  // cut off ratio

// Thermal efficiency of cycle
n = 1-(1/(gam*(r0^(gam-1))))*(((rc^gam)-1)/(rc-1))

W = n*q1                    // work done per mole of air in kJ/mol
v1 = R*T1/P1
//v1-v2 = v1*(1/v2/v1) = v1*(1-1/r0)
v1_v2 = v1*(1-1/r0)         // v1_v2 = v1 - v2

Pm = W*1e3/v1_v2            // Mean effective pressure in MPa

// Output Results
mprintf('\Work done per kg of air = %4.3f kJ/mol' ,W);
mprintf('\n Mean effective pressure = %4.4f MPa' ,Pm);

