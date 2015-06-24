
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 3

clear ;clc;

//Given data
X1 = 0.8         // wet steam quality
P = 0.1         // Pressure in MPa  
T = 400         // Temperature final in C
// at 0.1 MPa
h_f = 417.46        // Specific enthalpy of vapor in kJ/kg
h_fg = 2258.0       // Specific enthalpy of vapor in kJ/kg

// from superheated steam tables at P = 0.1MPa and T = 400 C
h2 = 3278.2         // Specific enthalpy of vapor in kJ/kg

// Calculations
h1 = h_f + X1*h_fg  // specific enthalpy at at 0.1MPa

Q = h2 - h1         // Energy transferred in kJ


// Output Results
mprintf('Energy transferred = %6.2f kJ',Q)
mprintf('\n From Mollier diagram, Final state of stream: Superheated steam at 0.1 MPa and 400 degree C')



