
// Theory and Problems of Thermodynamics
// Chapter 8
// Power and Refrigeration Cycles
// Example 4

clear ;clc;

//Given data
P1 = 2.5                // entering pressure of superheated steam in MPa
T1 = 523.15             // entering temperature of superheated steam in K
P2 = 10                 // pressure of dry saturated steam in kPa
n_T = 0.85              // isentropic efficeincy of turbine
n_P = 0.8               // isentropic efficeincy of pump

// Steam at 2.5 MPa and 523.15 K
h4 = 2880.1              // in kJ/kg
s4 = 6.4085              // in kJ/kg K
// Steam at 10 kPa
vf = 0.001010            // in m^3/kg
hf = 191.83              // in kJ/kg
sf = 0.6493              // in kJ/kg K
hfg = 2392.8             // in kJ/kg
sfg = 7.5009             // in kJ/kg K

h1 = 191.83              // in kJ/kg
h5_ = 2029.02            // in kJ/kg
h2_ = 194.34             // in kJ/kg
//s4=s5 => s4 = sf+X5*sfg
X5 = (s4-sf)/sfg

h5 = h1 + X5*hfg         // in kJ/kg

// n_T = (h4-h5)/(h4-h5_)
h4_h5 = n_T*(h4-h5_)      // h4_h5 = h4 - h5

// n_P = (h2_-h1)/(h2-h1)
h2 = h1 + (h2_-h1)/n_P

n = (h4_h5-(h2-h1))/(h4-h2)

// Output Results
mprintf('Thermal efficiency of power plant = %4.4f' ,n);

