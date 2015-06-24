
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 6

clear ;clc;

//Given data
T = 298                 // reaction temperature in K
H_CO  = -282.98         // heat of combustion of CO  in kJ
H_H2O  = -241.82        // heat of combustion of H2  in kJ
H_CH3OH = -676.49       // heat of combustion of CH3OH in kJJ

// 1) CO(g) + 0.5*O2(g) => CO2(g)
del_H_1 = H_CO

// 2) 2H2(g) + O2(g) => 2H2O(g)
del_H_2 = 2*(H_H2O)

// 3) CO2(g) + 2H2O(g) => CH3OH(g) + 1.5*O2(g)
del_H_3 =  H_CH3OH 

//  CO(g) + 2H2(g) => CH3OH(g)
del_H = del_H_1 + del_H_2 - del_H_3

// Output Results
mprintf('Heat of combustion of reaction = %4.2f kJ' , del_H);
