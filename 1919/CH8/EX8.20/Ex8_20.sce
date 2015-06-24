
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 20

clear ;clc;

//Given data
P1 = 0.1237              // Evaporator pressure to be maintained in MPa
P2 = 0.9                 // Condenser pressure to be maintained in MPa

// Freon-12 at 0.1237 MPa
h1 = 176.352             // in kJ/kg
s1 = 0.7121              // in kJ/kg K
s2 = s1                  // in kJ/kg K

// Freon-12 at 0.9 MPa
h3 = 71.823               // in kJ/kg
s2 = 0.7121               // in kJ/kg K
h2 = 211.233              // in kJ/kg       at T = 49.3`C

// Calculations
h4 = h3                   // in kJ/kg

COP = (h1-h4)/(h2-h1)    // COP of refrigerator

// Output Results
mprintf('COP of refrigerator = %4.4f' ,COP);
