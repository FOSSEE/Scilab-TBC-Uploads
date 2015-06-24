
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 20

clear ;clc;

//Given data
P1 = 0.5                // entering pressure of air at nozzle in MPa
T1 = 500                // entering temperature of air at nozzle in K
V1 = 2                   // velocity of air enters at nozzle
P2 = 0.1                // leaving  pressure of air from nozzle in MPa
r = 1.4                 // ratio of specific heats of air
R = 8.314               // gas constant

T2 = T1*(P2/P1)^((r-1)/r)       // enthalphy for superheated steam kJ/kg
// from law of thermodynamics
//(V2^2)/2 = h1 + (V1^2)/2 - h2   
//(V2^2)/2 = cp*(T1-T2) + (V1^2)/2

deff('y=mass(V2)', 'y = (V2^2)/2 - (R*r/(r-1))*(T1-T2) + (V1^2)/2') 
V2 = fsolve(0,mass)                // Mass of water vaporised in kg

// Output Results
mprintf('The exit velocity of air = %5.2f m/s', V2)
