
// Theory and Problems of Thermodynamics
// Chapter 3
// Thermodynamic Properties of Fluids
// Example 8

clear ;clc;

//Given data
V = 2           // Volume of Tank in m^3
P = 0.2         // Pressure in MPa
V_f = 0.2     // Volume of liquid in m^3

v_f = 0.00106   // Specific volume of liquid in m^3/kg
v_g = 0.8857    // Specific volume of vapor in m^3/kg

m_f = V_f/v_f
m_g = (V-V_f)/v_g
X = m_g/(m_f+m_g)

// Output Results
mprintf('Mass of Liquid = %5.3f kg' ,m_f)
mprintf('\n Mass of Vapor  = %5.3f kg' ,m_g)
mprintf('\n Quality of stream = %5.4f' ,X)

