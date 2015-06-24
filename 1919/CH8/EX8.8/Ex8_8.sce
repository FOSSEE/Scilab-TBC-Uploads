
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 8

clear ;clc;

//Given data
P1 = 2.5                // entering pressure of superheated steam in MPa
T1 = 523.15             // entering temperature of superheated steam in K
P2 = 0.5                // leaving pressure of super heated steam in MPa
P_C =  10               // condenser pressure of leaving steam in kPa

// Steam at 2.5 MPa and 523.15 K
h4 = 2880.1             // in kJ/kg
s4 = 6.4085             // in kJ/kg K

// Steam at 0.5 MPa
hf = 640.23               // in kJ/kg
hfg = 2108.5              // in kJ/kg
sf = 1.8607               // in kJ/kg K
sfg = 4.9606              // in kJ/kg K

// Turbine 1
s5 = s4
X5 = (s5-sf)/sfg
h5 = hf + X5*hfg         // in kJ/kg 

// Steam at 0.5 MPa and 523.15 K
h6 = 2960.7             // in kJ/kg
s6 = 7.2709             // in kJ/kg K

// Steam at 10 kPa
hf = 191.83              // in kJ/kg
hfg = 2392.8             // in kJ/kg
vf = 0.001010            // in m^3/kg
sf = 0.6493              // in kJ/kg K
sfg = 7.5009             // in kJ/kg K

// Turbine 2
s7 = s6
X7 = (s7-sf)/sfg
h7 = hf + X7*hfg             // in kJ/kg

h2_h1 = vf*(P1*1e3-P_C)      // h2_h1 = h2-h1   in kJ/kg

h2 = hf + h2_h1              // in kJ/kg

n = ((h4 - h5)+(h6-h7)-(h2_h1))/((h4-h2)+(h6-h5))

// Output Results
mprintf('Thermal efficiency of power plant = %4.4f' ,n);

