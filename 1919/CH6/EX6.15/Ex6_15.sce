
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 15

clear ;clc;

//Given data
P1 = 3                  // pressure of superheated steam in MPa
T1 = 573.15             // temperature of superheated steam in K
P2 = 0.2                // pressure of dry saturated steam in MPa
P0 = 0.1                // ambient pressure in MPa
T0 = 300                // ambient temperature in K

// Data from Steam Tables
h1 = 2993.5             // in kJ/kg
v1 = 0.08114            // in m^3/kg
s1 = 6.539              // in kJ/kg K
h2 = 2706.7             // in kJ/kg
v2 = 0.8857             // in m^3/kg
s2 = 7.1271             // in kJ/kg K

P1 = P1*1e3             // Units conversion from MPa to kPa
P2 = P2*1e3             // Units conversion from MPa to kPa
P0 = P0*1e3             // Units conversion from MPa to kPa

// Calculations for maximum useful work
// phi_12 = phi_1 - phi_2
// phi_12 = (u1+P0*v1-T0*s1)-(u2+P0*v2-T0*s2)
// phi_12 = (h1-P1*v1+P0*v1-T0*s1)-(h2-P2*v2+P0*v2-T0*s2)
phi_12 = (h1-h2) - v1*(P1-P0) + v2*(P2-P0) - T0*(s1-s2)


// Output Results
mprintf('Maximum useful work = %4.2f kJ' ,phi_12);
