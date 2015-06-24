
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 13

clear ;clc;

//Given data
P = 1                // Initial Pressure in MPa
T = 200                // line carrying steam Temperature in C
Pf = 1               // final Pressure in MPa
Pf = Pf*1e3         // units conversion MPa to kPa

// at P = 1 MPa T = 200 C
h1 = 2827.9            // units kJ/kg

// the first law of thermodynamics for the transient flow process
// h1*(mf - m0) = mf*uf - m0*u0     (A)

// This can be solved by trail and error
// Assume Tf
Tf = 250                // temperature in C
//at P = 1 MPa and T = 250 C
vf = 0.2327             // data from steam tables units m^3/kg
hf = 2942.6            // data from steam tables units kJ/kg

uf = hf-Pf*vf            // units kJ/kg

// substitute the values in LHS and RHS of equation B till both gets same
//h1 = uf +Pf*vf/2

RHS = uf + (Pf*vf/2)
LHS = h1

// Output Results
mprintf('The approximate value equal to h1 = %6.1f kJ/kg',h1)
mprintf('\nFinal temperature of steam in tank = %4.0f degree C',Tf)





