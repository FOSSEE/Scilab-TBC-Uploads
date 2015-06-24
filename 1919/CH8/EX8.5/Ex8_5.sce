
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 5

clear ;clc;

//Given data
P = 10                  // condenser pressure in kPa
P1 = 2.5                // leaving pressure of steam in MPa
P2 = 3.5                // leaving pressure of steam in MPa
T1 = 523.15             // entering temperature of superheated steam in K

// Steam at 2.5 MPa and 523.15 K. thermal efficiency,
n_T = 0.316             // Thermal efficeincy of turbine
//X5  =0.7678             // from example 8.3

// Superheated steam: 3.5 MPa and 523.15 K
h4 = 2829.2             // in kJ/kg
s4 = 6.1749             // in kJ/kg K

// Steam at 10 kPa
vf = 0.001010            // in m^3/kg
hf = 191.83              // in kJ/kg
sf = 0.6493              // in kJ/kg K
hfg = 2392.8             // in kJ/kg
sfg = 7.5009             // in kJ/kg K

//s4=s5 => s4 = sf+X5*sfg
X5 = (s4-sf)/sfg

h5 = hf + X5*hfg         // in kJ/kg   
h2_h1 = vf*(P2*1e3-P)    // h2_h1 = h2-h1   in kJ/kg

h2 = hf + h2_h1         // in kJ/kg

n = ((h4 - h5)-(h2_h1))/(h4-h2)

// Output Results
mprintf('Thermal efficiency of power plant = %4.4f' ,n);

