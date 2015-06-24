
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 11

clear ;clc;

//Given data
// CO2(g) + H2O(g) => CO2(g) + H2(g)
T = 298                // intial temperature in K
T2 = 1000               // final temperature in K
del_H_1 = -110.53       // heat of formation of CO  in kJ at 298 K
del_G_1 = -137.17       // Gibbs free energy of CO  in kJ at 298 K
del_H_2 = -393.51       // heat of formation of CO2 in kJ at 298 K
del_G_2 = -394.36       // Gibbs free energy of CO2 in kJ at 298 K
del_H_3 = -241.82       // heat of formation of H2O in kJ at 298 K
del_G_3 = -228.57       // Gibbs free energy of H2O in kJ at 298 K
a1 = 28.07*1e-3         // constant 'a' for CO in heat capacities
b1 = 4.63*1e-6          // constant 'b' for CO in heat capacities
a2 = 28.85*1e-3         // constant 'a' for H2O in heat capacities
b2 = 12.06*1e-6         // constant 'b' for H2O in heat capacities
a3 = 45.37*1e-3         // constant 'a' for CO2 in heat capacities
b3 = 8.69*1e-6          // constant 'b' for CO2 in heat capacities
a4 = 27*1e-3            // constant 'a' for H2 in heat capacities
b4 = 3.51*1e-6          // constant 'b' for H2 in heat capacities
R = 8.314               // gas constant

// Calculations
del_a = a3 + a4 - a1 - a2;
del_b = b3 + b4 - b1 - b2;
del_c = 0;
//del_H_T = del_H_0 + del_a*T + del_b/2*T^2 + del_c/3*T^3

del_H_298 = del_H_2 - del_H_1 - del_H_3         // heat of reaction
del_G_298 = del_G_2 - del_G_1 - del_G_3         // Gibbs free energy

deff('y=H_0(del_H_0)','y=-del_H_298+del_H_0+del_a*T+del_b/2*T^2+del_c/3*T^3') 
del_H_0 = fsolve(1,H_0)                    

// del_G_T = del_H_0 + del_a*T*log(T) + del_b/2*T^2 + del_c/6*T^3 - I*R*T
deff('y1=cons_I(I)','y1=del_G_298-del_H_0+del_a*T*log(T)+del_b/2*T^2+del_c/6*T^3+I*R*T') 
I = fsolve(1,cons_I)                    

del_G_T = del_H_0 - del_a*T2*log(T2) - del_b/2*(T2^2) - del_c/6*T2^3 - I*R*T2


K = exp(-del_G_T*1e3/(R*T2))                 // equilibrium constant


// Output Results
mprintf('Equilibrium constant at 1000 K and 0.1 MPa = %4.3f ' , K);
