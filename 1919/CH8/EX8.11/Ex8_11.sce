
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 11

clear ;clc;

//Given data
r0 = 8                // Compression ratio of Otto cycle
T1 = 300              // initial temperature of air in K
P1 = 0.1              // initial pressure of air in MPa
q1 = 25               // amount of energy added during combustion cycle
gam = 1.4             // heat  capacity ratio
R = 8.314             // gas constant
Cv = 2.5*R            // specific heat at constant volume

// calculations 
T2 = T1*(r0)^(gam-1)            
//q1 = Cv * (T3-T2)
deff('y=temp(T3)', 'y = q1*1e3 - Cv*(T3-T2)') 
T3 = fsolve(10,temp)            // maximum cycle temperature

v1 = R*T1/P1*1e-6                

n = 1-(1/r0)^(gam-1)    // Thermal efficiency of cycle
W = n*q1                // work done per mole of air

//Pm = W/(v1-v2)
Pm = W*1e3/(v1*(1-1/r0))    // Mean effective pressure
Pm = Pm*1e-6                // units conversion Pa to MPa

// Output Results
mprintf('Maximum cycle temperature = %4.0f K' ,T3);
mprintf('\n Mean effective pressure = %4.4f kPa' ,Pm);
