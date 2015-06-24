// Theory and Problems of Thermodynamics
// Chapter 3
// Thermodynamic Properties of Fluids
// Example 2

clear ;clc;

//Given data
N = 1000        // Number of moles of Methane
v = 0.3         // volume in m^3
T = 300         // Temperature of methane in K
Pc = 4.6        // Critical pressure constant of Methane in MPa
Tc = 190.6      // critical Temperature constant of Methane in K
R = 8.314       // Gas constant
// Vander waals constants 
a = 228.5       // units kPa(m^3/kmol)^2
b = 0.0427      // units m^3/kmol

// for ideal gas
PI = N*R*T/v
PI = PI/1e6

// Van der waals equation of state 
PV = R*T/(v-b)-a/v^2

// Redlich-Kwong constants 
a = 3196.32       // units kPa(m^3/kmol)^2
b = 0.0296      // units m^3/kmol

// Redlich-Kwong equation of state 
PR = (R*T/(v-b))-a/(v*(v+b)*(T^0.5))

// units converssion from kPa to MPa
PV = PV*1e-3
PR = PR*1e-3

mprintf('Pressure from Ideal gas law = %6.3f MPa' ,PI)

mprintf('\n Vander Waals equation of state = %6.3f MPa' ,PV)

mprintf('\n Redlich-Kwong equation os state = %6.3f MPa' ,PR)
