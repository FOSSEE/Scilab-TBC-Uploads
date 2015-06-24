
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 17

clear ;clc;

//Given data
T1 = 263.15           // temperature of supercooled liquid water in K
T2 = 273.15           // final temperature of liquid water in K
Cp = 4.2              // specific heat(Isobaric) in kJ/kg K
Lw = 333.43           // latent heat of fusion of water at 0 *C in kJ/kg

// Calculations for determining mass of water
deff('y=mass(X)', 'y = Cp *(T2 - T1) - Lw * X') // Energy balance
X = fsolve(0,mass)                // Mass of water solified in kg

// entropy change for system from T1 to T2 temperature
S1 = Cp*log(T2/T1)

// entropy change for system for phase change from liquid to ice
S2 = Lw*X/T2

S = (S1 - S2)*1e3         // Total entrophy change in J/K

// Output Results
mprintf('The mass of water which solidifies = %4.3f kg', X)
mprintf('\n The entrophy change associated     = %6.4f J/K', S)
