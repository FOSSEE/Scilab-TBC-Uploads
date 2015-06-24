
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 10

clear ;clc;

//Given data
// CO2(g) + H2O(g) => CO2(g) + H2(g)
T1 = 298                // intial temperature in K
T2 = 1000               // final temperature in K
del_H_1 = -110.53       // heat of formation of CO  in kJ at 298 K
del_G_1 = -137.17       // Gibbs free energy of CO  in kJ at 298 K
del_H_2 = -393.51       // heat of formation of CO2 in kJ at 298 K
del_G_2 = -394.36       // Gibbs free energy of CO2 in kJ at 298 K
del_H_3 = -241.82       // heat of formation of H2O in kJ at 298 K
del_G_3 = -228.57       // Gibbs free energy of H2O in kJ at 298 K
R = 8.314               // gas constant

// Calculations
del_G = del_G_2 - del_G_1 - del_G_3   // Gibbs free energy
K1 = exp(-del_G*1e3/(R*T1))          // equilibrium constant

del_H = del_H_2 - del_H_1 - del_H_3      // heat of reaction

//log(K2/K1) = (-del_H/R)*(1/T2-1/T1)
deff('y=cons(K2)', 'y = log(K2/K1) - (-del_H*1e3/R)*(1/T2-1/T1)') 
K2 = fsolve(1,cons)                // equilibrium constant


// Output Results
mprintf('(a) Gibbs free energy at 298 K and 0.1 MPa = %4.2f kJ' , del_G);
mprintf('\n     Equilibrium constant at 298 K and 0.1 MPa = %4.4f E+05' , K1*1e-5);
mprintf('\n (b) Standard heat of reaction at 298 K and 0.1 MPa = %4.2f kJ' , del_H);
mprintf('\n     Equilibrium constant at 1000 K and 0.1 MPa = %4.4f ' , K2);
