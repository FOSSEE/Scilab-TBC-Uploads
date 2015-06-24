
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 18

clear ;clc;

//Given data
ms = 5                   // mass of steel block in kg
mw = 5                   // mass of water in kg
T1 = 1273.15            // initial temperature of steel block in K
T2 = 373.15             // final temperature of steel block in K
Cp = 0.5                // specific heat of steel in kJ/kg K
hf1 = 419.04            // enthalphy at T1 in kJ/kg
hf2 = 125.79            // enthalphy at T2 in kJ/kg
sf1 = 1.3069            // entrophy  at T1 in kJ/kg K
sf2 = 0.4369            // entrophy  at T2 in kJ/kg K
sg1 = 7.3549            // entrophy  at T1 in kJ/kg K

// Calculations for determining mass of water
//energy balance for quenching
deff('y=mass(X)', 'y = ms*Cp*(T1-T2) - mw*(hf1-hf2) - 2257 * X') 
X = fsolve(0,mass)                // Mass of water vaporised in kg

// entropy change of steel block from T1 to T2 temperature
Ss = ms*Cp*log(T2/T1)

// entropy change of water from T1 to T2 temperature
Sw = mw*(sf1-sf2) + X*(sg1-sf1)

// entropy change of water from T1 to T2 temperature
Su = Sw + Ss


// Output Results
mprintf('Entrophy change of steel block = %6.4f kJ/K', Ss)
mprintf('\n Entrophy change of water = %6.4f kJ/K', Sw)
mprintf('\n Entrophy change of steel block = %6.4f kJ/K', Su)
