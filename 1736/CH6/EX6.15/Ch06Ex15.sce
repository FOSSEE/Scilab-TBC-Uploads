// Scilab Code Ex6.15: Page-204 (2006)
clc; clear;
n_i = 2.5e+019;     // Intrinsic carrier concentration of Ge at room temperature, per metre cube
n_Ge = 5e+028;  // Concentration of Ge atoms, per metre cube
delta_d = 1e+06;    // Rate at which pentavalent impurity is doped in pure Ge, ppm
n_e = n_Ge/delta_d;    // Concentration of impurity atoms, per metre cube
// From law of mass action, n_e*n_h = n_i^2, solving for n_h
n_h = n_i^2/n_e;    // Concentration of holes, per metre cube

printf("\nThis concentration of holes in Ge = %4.2e per metre cube", n_h);

// Result 
// This concentration of holes in Ge = 1.25e+016 per metre cube 

