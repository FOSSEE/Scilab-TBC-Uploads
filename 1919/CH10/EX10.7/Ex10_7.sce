
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 7

clear ;clc;

//Given data
T = 1000                // reaction temperature in K
Tf = 298                // standard heat temperature in K
H_SO2 = -296.83         // heat of formation of SO2 in kJ
H_SO3 = -395.72         // heat of formation of SO3 in kJ

// 2SO2(g) + O2(g) => 2SO3(g)
// del_H_1000 = del_H_R + del_H_P + H_f_298

H_f_298 = 2*H_SO3 - 2*H_SO2

// standard heat of reactants
del_H_R1 = 2* integrate('47.38*1e-3 + 6.66*T*1e-6', 'T', 1000, 298);
del_H_R2 =  integrate('30.25*1e-3 + 4.21*T*1e-6', 'T', 1000, 298);

del_H_R = del_H_R1 + del_H_R2;

// standard heat of products
del_H_P = 2* integrate('67.01*1e-3 + 8.78*T*1e-6', 'T', 298, 1000);

// over all standard heat of reaction
del_H_1000 = del_H_R + H_f_298 + del_H_P;

// Output Results
mprintf('Standard Heat of reaction = %4.2f kJ' , del_H_1000);
