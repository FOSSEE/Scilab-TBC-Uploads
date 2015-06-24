
// Theory and Problems of Thermodynamics
// Chapter 5
//Second Law of Thermodynamcis
// Example 19

clear ;clc;

//Given data
T1 = 573.15             // entering temperature of superheated steam in K
P1 = 3.0                // entering pressure of superheated steam in MPa
P2 = 20                 // leaving  pressure of superheated steam in MPa
Ws = 1e3                // output power of turbine in KW

// For steam at 3.0 MPa and 573.15 K
h1 = 2993.5             // enthalphy for superheated steam kJ/kg
s1 = 6.539              // entrophy  for superheated steam kJ/kg K

// at 20 kPa
hf = 251.4              // enthalphy kJ/kg
hfg = 2358.3            // enthalphy kJ/kg
sf = 0.832              // entrophy  kJ/kg K
sfg = 7.9085             // entrophy  kJ/kg K

// Reversible, adiabatic turbine: s1 = s2
//energy balance
deff('y=mass(X)', 'y = sfg*X + (1-X)*sf - s1') 
X = fsolve(0,mass)                // Mass of water vaporised in kg

h2 = hf + X * hfg                  // enthalphy for leaving steam

m = -Ws/(h2-h1)                   // flow rate of steam in kg/s

// Output Results
mprintf('The flow rate of steam = %4.2f kg/s', m)
