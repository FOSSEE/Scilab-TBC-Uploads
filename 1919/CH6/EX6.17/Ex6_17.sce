
// Theory and Problems of Thermodynamics
// Chapter 6
// Thermodynamic Potentials and Availability
// Example 17

clear ;clc;

//Given data
P1 = 3                  // entering pressure of superheated steam in MPa
T1 = 573.15             // entering temperature of superheated steam in K
P2 = 20                 // pressure of dry saturated steam in kPa
T0 = 300                // ambient temperature in K

// Steam at 3.0 MPa and 573.15 k
h = 2993.5              // in kJ/kg
s = 6.539               // in kJ/kg K
// Steam at 20 kPa
hg = 2609.7             // in kJ/kg
sg = 7.9085             // in kJ/kg K

// n2 = W/(B1-B2)       // second law efficiency of turbine
 n2 = (h-hg)/(h-hg-T0*(s-sg))


// Output Results
mprintf('Second law efficiency of turbine = %4.3f' ,n2);
