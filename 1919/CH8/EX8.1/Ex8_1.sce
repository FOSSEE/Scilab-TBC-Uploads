
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 1

clear ;clc;

//Given data
P1 = 3                  // entering pressure of superheated steam in MPa
T1 = 573.15             // entering temperature of superheated steam in K
P2 = 10                 // pressure of dry saturated steam in kPa
m1 = 0.1                // moisture content of leaving steam

// Steam at 3.0 MPa and 573.15 K
h1 = 2993.5              // in kJ/kg
s1 = 6.5390              // in kJ/kg K
// Steam at 10 kPa
hf = 191.83              // in kJ/kg
sf = 0.6493              // in kJ/kg K
hfg = 2392.8             // in kJ/kg
sg = 8.1502              // in kJ/kg K

h2 = hf + (1-m1)*hfg    // in kJ/kg

W = h1-h2                // work done by turbine

// for isentropic turbine S2 = S1
deff('y=work(X2)', 'y = s1 - sg*X2 - (1-X2)*sf') 
X2 = fsolve(10,work)

h2 = hf+X2*hfg

W_i = h1 - h2               // work delivered if turbine is isentropic

n_T = W/W_i                 // isentropic efficiency

// Output Results
mprintf('Isentropic efficiency of turbine = %4.4f' ,n_T);

