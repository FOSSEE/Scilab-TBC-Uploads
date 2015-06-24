
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 14

clear ;clc;

//Given data
V = 1                   // Volume of tank in m^3
P0 = 1                  // Initial Pressure in MPa
Pf = 0.8              // final Pressure in MPa
P0 = P0*1e3          // units conversion MPa to kPa
Pf = Pf*1e3          // units conversion MPa to kPa

// at P = 1 MPa 
v0 = 0.19444            // units m^3/kg
h0 = 2778.1             // units kJ/kg

m0 = V/v0               // mass in kg
u0 = h0-P0*v0            // units kJ/kg


mf = 4.243              // assume mf in kg
vf = V/mf               // units in m3/kg

//at 0.8 MPa
vf_sat = 0.001115     // data from steam tables units m^3/kg
vg = 0.2404           // data from steam tables units m^3/kg
hf_sat = 721.11       // data from steam tables units kJ/kg
hg = 2769.1           // data from steam tables units kJ/kg
hfg = 2048.97         // data from steam tables units kJ/kg

// Calculations
X = (vf - vf_sat)/(vg - vf_sat)     // Fraction of steam

hf = hf_sat + X * hfg               // units kJ/kg
uf = hf-Pf*vf                       // units kJ/kg
h2 = (h0 + hg) * 0.5

// substitute the values in LHS and RHS of equation D till both gets same
//(m0-mf)*h2 = m0*u0 - mf*uf
LHS = (m0-mf)*h2
RHS = m0*u0 - mf*uf

mass_steam = m0-mf              // mass of the steam in kg

// Output Results

mprintf('Amount of steam withdrawn from tank = %3.1f kg', mass_steam)





