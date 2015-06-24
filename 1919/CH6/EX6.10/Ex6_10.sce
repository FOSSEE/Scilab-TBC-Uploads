
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 10

clear ;clc;

//Given data
P1 = 3              // entering pressure in MPa
T = 300             // Superheated steam temperature in C
P2 = 50             // dry saturated steam pressure in kPa
m = 1               // turbine stream flow rate in kg/s

// for superheated steam at 3MPa and 300C
h1 = 2993.5         // enthalphy in kg/kg
h2 = 2645.9         // enthalphy in kg/kg

Ws_m = (h1-h2)       // power output in watts

// Output Results
mprintf('Power output of turbine = %4.1f kW' ,Ws_m);
