
// Theory and Problems of Thermodynamics
// Chapter 3
// Thermodynamic Properties of Fluids
// Example 9

clear ;clc;

//Given data
V = 10            // Volume of container in litre
P = 100           // Pressure in kPa
v_c = 0.003155      // critical volume of water in m^3/kg
v_f = 0.001043      // Specific volume of liquid in m^3/kg
v_g = 1.6940        // Specific volume of vapor in m^3/kg

V = V*1e-3          // units conversion litre to m^3

// Calculations
m = V/v_c         // Mass of stream to be filled in kg
X = (v_c - v_f)/(v_g - v_f)     // Fraction of steam
R_vl = (X*v_g)/((1-X)*v_f)      //ratio of the vapor volume to the liquid volume

// Output Results
mprintf('(a) The amount of stream to be filled = %4.2f kg' ,m)
mprintf('\n (b) The ratio of the vapor volume to the liquid volume = %4.3f' ,R_vl)

