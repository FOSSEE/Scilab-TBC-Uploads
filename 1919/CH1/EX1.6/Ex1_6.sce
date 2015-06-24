// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 6

clear ;clc;

//Given data
X_O = 0.21      // X_O = molefraction of oxygen
X_N = 0.79      // X_N = molefraction of nitrogen
mw_O = 32       // mw_O = molecular mass of oxygen
mw_N = 28       // mw_N = molecular mass of nitrogen

//Calculate mass of 1 kmol air
m = X_O * mw_O + X_N * mw_N;    //mass of 1 kmol air

// Results
mprintf('Mass of 1 kmol air = %5.2f kg', m)
