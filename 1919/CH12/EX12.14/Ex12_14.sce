
// Theory and Problems of Thermodynamics
// Chapter 12
// Statistical Thermodynamics
// Example 14
clear ;clc;

//Given data
Cv = 2.11               // molar heat capacity of a solid in J/mol K
T1 = 12                  // temperature of solid in K
T2 = 50                 // temperature at molar entrophy to be calculated

// Calculations
// Cv = C*(T/TD)^3      where C is constant
//C = 1.221*1e-3*T^2
// Assume the variation of molar heat capacity with temperature follow
// the relation Cv = C(T/TD)^3 in the temperature range 0 to 50 K then

s = integrate('1.221*(T^2)*1e-3','T',0,50)
s = s*1e-3              // units conversion J/mol K to kJ/mol K

// output results
mprintf('Molar entrophy of solid = %4.4f kJ/mol K', s)
// error in determining integration value
