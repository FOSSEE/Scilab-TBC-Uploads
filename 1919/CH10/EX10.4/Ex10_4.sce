
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 4

clear ;clc;

//Given data
T = 298                 // reaction temperature in K
H_SO2 = -296.83         // heat of formation of SO2 in kJ
H_SO3 = -395.72         // heat of formation of SO3 in kJ
H_CO  = -110.53         // heat of formation of CO  in kJ
H_CH3OH = -200.66       // heat of formation of CH3OH in kJ
H_C2H4 = 52.51          // heat of formation of C2H4 in kJ
H_H2O = -241.82         // heat of formation of H2O in kJ
H_C2H5OH = -235.10      // heat of formation of C2H5OH in kJ


// a) 2SO2(g) + O2(g) => 2SO3(g)
del_H_a = 2*H_SO3 - 2*H_SO2

// b) CO(g) + 2H2(g) => CH3OH(g)
del_H_b = H_CH3OH - H_CO

// c) C2H4(g) + H2O(g) => C2H5OH(g)
del_H_c = H_C2H5OH - H_C2H4 - H_H2O


// Output Results
mprintf('(a) Heat of formation of reaction A = %4.2f kJ' , del_H_a);
mprintf('\n (b) Heat of formation of reaction B = %4.2f kJ' , del_H_b);
mprintf('\n (c) Heat of formation of reaction C = %4.2f kJ' , del_H_c);
