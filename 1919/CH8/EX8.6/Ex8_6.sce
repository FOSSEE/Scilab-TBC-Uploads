
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 6

clear ;clc;

//Given data
P1 = 2.5                // entering pressure of superheated steam in MPa
P2 = 10                 // leaving pressure of steam in kPa
T1 = 523.15             // steam is superheated to temperature in K
T2 = 623.15             // steam is superheated to temperature in K

// Steam at 2.5 MPa and 523.15 K
n_T = 0.316             // Thermal efficeincy of turbine
X5  =0.7678             // from example 8.3

// Superheated steam: 2.5 MPa and 623.15 K
h6 = 3126.3             // in kJ/kg
s6 = 6.8403             // in kJ/kg K

// Steam at 10 kPa
vf = 0.001010            // in m^3/kg
hf = 191.83              // in kJ/kg
sf = 0.6493              // in kJ/kg K
hfg = 2392.8             // in kJ/kg
sfg = 7.5009             // in kJ/kg K

s7 = s6
X7 = (s7-sf)/sfg

h7 = hf + X7*hfg         // in kJ/kg   

Wp = vf*(P1*1e3-P2)       // Wp = v*del_P = h2-h1   in kJ/kg

h2 = hf + Wp             // in kJ/kg

n = ((h6 - h7)-(Wp))/(h6-h2)

// Output Results
mprintf('Thermal efficiency of power plant = %4.4f' ,n);

