
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 11

clear ;clc;

//Given data
V = 1                   // volume in m^3
P0 = 0.2                // Initial Pressure in MPa
Pf = 3                  // Final Pressure in MPa
T = 350                // line carrying steam Temperature in C
P = 3                  // line carrying steam Pressure in MPa
P = P*1e3              // units conversion MPa tp kPa

// at 2 MPa
v_g = 0.8857            // v_g = v_0  units in m^3  
h_g = 2706.7            // h_g = h_0  units kJ/kg

m0 = V/v_g              // mass in kg
u0 = h_g - P0*v_g       // units kJ/kg

// at 3 MPa and 350 C
h = 3115.3              // units kJ/kg

// the first law of thermodynamics for the transient flow process
// h1*(mf - m0) = mf*uf - m0*u0     (A)
// the above equation convets after substituting the values
// mf*(3115.3 -uf) = 661.3          (B)
//the mass steam in final stage
//mf = V/vf                         (C)

// This can be solved by trail and error
// Assume Tf
Tf = 463                // temperature in C
//at P = 3 MPa and T = 463 C
vf = 0.1100             // data from steam tables 
hf = 3373.25            // data from steam tables
uf = hf-P*vf            // units kJ/kg
mf = V/vf               // mass of steam in kg

// substitute the values in LHS and RHS of equation B till both gets same
LHS = mf*(h -uf)
RHS = 661.3

// Output Results
mprintf('Mass of steam in the tank = %5.3f kg',mf)
mprintf('\n Final temperature of steam in tank = %3.0f degree C',Tf)





