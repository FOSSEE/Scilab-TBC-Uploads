
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 7

clear ;clc;

//Given data
P1 = 2.5                // entering pressure of superheated steam in MPa
T1 = 523.15             // entering temperature of superheated steam in K
P_e1 = 10               // condenser pressure of exhaust steam in kPa
P_e2 = 5                // condenser pressure of exhaust steam in kPa

// Steam at 5 kPa
vf = 0.001010            // in m^3/kg
hf = 137.82              // in kJ/kg
hfg = 2423.7             // in kJ/kg
sf = 0.4764              // in kJ/kg K
sfg = 7.9187             // in kJ/kg K

// Steam at 2.5 MPa and 523.15 K
h4 = 2880.1             // in kJ/kg
s4 = 6.4085             // in kJ/kg K

s5 = s4
X5 = (s5-sf)/sfg

h5 = hf + X5*hfg         // in kJ/kg   

h2_h1 = vf*(P1*1e3-P_e2)       // h2_h1 = h2-h1   in kJ/kg

h2 = hf + h2_h1              // in kJ/kg

n = ((h4 - h5)-(h2_h1))/(h4-h2)

// Output Results
mprintf('Thermal efficiency of power plant = %4.4f' ,n);

