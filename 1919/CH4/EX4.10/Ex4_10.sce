
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 10

clear ;clc;

//Given data
V = 2                   // volume in m^3
gam = 1.67              // gamma ideal gas coefficient
P0 = 0.1                // Initial Pressure in MPa  
T0 = 300                // Initial Temperature in K
Pf = 3                  // Final Pressure in MPa  
T1 = 500                // Final Temperature in K
R = 8.314               // Gas constant

// Calculation
// the first law of thermodynamics for a transient flow and after rewriting 
Tf = Pf/(((Pf-P0)/(gam*T1))+(P0/T0))        // Final temperature

Pf = Pf * 1e6           // units conversion from MPa to Pa
P0 = P0 * 1e6           // units conversion from MPa to Pa

q = (V/R)*(Pf/Tf - P0/T0)

// Output Results
mprintf('Temperature of helium in the tank = %6.2f K',Tf)
mprintf('\nQuantity of helium entered into tank = %6.2f mol',q)





