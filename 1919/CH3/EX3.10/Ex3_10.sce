
// Theory and Problems of Thermodynamics
// Chapter 3
// Thermodynamic Properties of Fluids
// Example 10

clear ;clc;

//Given data
X = 0.8             // wet stream quality
P = 0.1             // Pressure in MPa
T = 300             // Temperature in C
h_f = 417.46        // Specific enthalpy of fluid
h_fg = 2258.0       // Specific enthalpy difference of gas and fluid
v_f = 0.001043      // Specific volume of liquid in m^3/kg
v_g = 1.6940        // Specific volume of vapor in m^3/kg

h2 = 3074.3         // specific enthalpy at 300C and 0.1MPa in kJ/kg
v2 = 2.639          // Specific volume at 300C and 0.1MPa in m^3/kg

P = P * 1e6         // Units conversion from MPa to Pa

// Calculations
h1 = h_f + X*h_fg
v1 = X*v_g + (1-X)*v_f

Q = h2 - h1         // heat interaction by the steam
W = P*(v2-v1)       // Work done by the steam

W = W * 1e-3        // Units conversion from J to kJ

// Output Results
mprintf('heat interaction by the steam = %6.2f kJ/kg' ,Q)
mprintf('\n Work done by the steam = %6.2f kJ/kg' ,W)
