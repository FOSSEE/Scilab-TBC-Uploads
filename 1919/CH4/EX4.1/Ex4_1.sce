
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 1

clear ;clc;

//Given data
V = 2             // Volume of container in m^3
P1 = 0.2          // Initial Pressure in MPa
P2 = 0.1          // Final Pressure in MPa
// at 0.2 MPa
h_1 = 2706.7        // Specific enthalpy of vapor in kJ/kg
v_g1 = 0.8857       // Specific volume of vapor in m^3/kg

// at 0.1 MPa
v_f2 = 0.00104      // Specific volume of liquid in m^3/kg
v_g2 = 1.694        // Specific volume of liquid in m^3/kg
h_f2 = 417.46       // Specific enthalpy of vapor in kJ/kg
h_fg2 = 2258.0      // Specific enthalpy of vapor in kJ/kg
v_1 = 0.8857        // Specific volume of vapor in m^3/kg

// UNits conversion
P1 = 0.2*1e3        // From MPa to kPa
P2 = 0.1*1e3        // From MPa to kPa

// Calculations
// at 0.2 MPa
m = V/v_g1          // Mass of stream to be filled in kg

// at 0.1 MPa
X = (v_1 - v_f2)/(v_g2 - v_f2)     // Fraction of steam

// The final state of stream: wet steam quality Fraction of Steam at 0.1 MPa 
h_2 = h_f2 + X*h_fg2

// Amount of heat energy transferred as heat to surroundings
del_U = m* ((h_2-h_1)-v_1*(P2-P1))

// Output Results
mprintf('The final steam quality at 0.1 MPa = %4.4f', X)
mprintf('\n Energy transferred as heat to the surroundings = %6.1f kJ' ,-del_U)

