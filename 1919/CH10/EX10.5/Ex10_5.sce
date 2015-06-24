
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 5

clear ;clc;

//Given data
T = 298                 // reaction temperature in K
H_C2H4 = 52.51          // heat of formation of C2H4 in kJ
H_CO2  = -393.51        // heat of formation of CO2 in kJ
H_H2O = -241.82         // heat of formation of H2O in kJ
L_H2O = 43.97           // latent heat of vaporization of H2O at 298K in kJ


// 1) C2H4(g) + 3O2(g) => 2CO2(g) + 2H2O(g)
del_H_1 = 2*H_H2O + 2*H_CO2 - H_C2H4

// 2) H2O(g) => H2O(l)
del_H_2 = -2*(L_H2O)

//  C2H4(g) + 3O2(g) => 2CO2(g) + 2H2O(l)
del_H = del_H_1 + del_H_2


// Output Results
mprintf('Heat of formation of reaction = %4.2f kJ' , del_H);
