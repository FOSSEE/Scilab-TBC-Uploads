
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 9

clear ;clc;

//Given data
T = 1000                // reaction temperature in K
Tf = 298                // standard heat temperature in K
del_H_f = -241.82       // heat of formation of H2O in kJ
a1 = 28.85*1e-3         // constant 'a' for water in heat capacities
b1 = 12.06*1e-6         // constant 'b' for water in heat capacities
a2 = 30.25*1e-3         // constant 'a' for oxygen in heat capacities
b2 = 4.21*1e-6          // constant 'b' for oxygen in heat capacities
a3 = 27.27*1e-3         // constant 'a' for nitrogen in heat capacities
b3 = 4.93*1e-6          // constant 'b' for nitrogen in heat capacities

// Reaction
//H2(g)+ 0.5*1.5*O2(g)+ 0.5*1.5*3.76*N2 => H2O(g)+ 0.25*O2(g)+ 2.82*N2(g)

del_a = a1 + 0.25*a2 + 2.82*a3
del_b = b1 + 0.25*b2 + 2.82*b3

// Reactants(298 K) => Products(298 K) => Products(P)
// complete combustion => del_H_T = 0
// del_H_T = del_H_f + del_H_P_T
// 0 = del_H_F + del_H_P_T                              (A)
// del_H_P_T = del_a*(T-298) + del_b/2*(T-298)^2        (B)
// solving Equation A and B

deff('y=temp(T)', 'y = del_H_f + del_a*(T-Tf) + del_b*((T^2)-(Tf^2))/2') 
T = fsolve(10,temp)





// Output Results
mprintf('Maximum flame temperature attained in welding torch = %4.0f K' , T);
