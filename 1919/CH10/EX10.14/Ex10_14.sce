
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 14

clear ;clc;

//Given data
T = 400                 // reactor temperature in K
P = 10                  // reactor pressure in bar
K = 1.737               // equilibrium constant

// Calculations
// Let X be the degree of conversion of CO
//                  CO(g)      +    2H2(g)   =>   CH3OH(g)   +    He
// Initial (mol)      1               2             0             2
// at equilibrium    1-X            2(1-X)          X             2
// molefraction   (1-X)/(5-2X)  2(1-X)/(5-2X)     X/(5-2X)

// sum(Ni) = 5-2X
// P=10 bar; sum(Vi)= -2
Ky = K/(P^-2)
// Ky = (X/(2*(1-X)))/((1-X)/(3-2*X))/((2*(1-X)/(3-2*X))^2)
deff('y=conver(X)','y=Ky-(X/(5-2*X))/((1-X)/(5-2*X))/((2*(1-X)/(5-2*X))^2)') 
X = fsolve(0.5,conver)                    

y_CO = (1-X)/(5-2*X)
y_H2 = 2*(1-X)/(5-2*X)
y_CH3OH = X/(5-2*X)
y_He = 1 - y_CO - y_H2 - y_CH3OH

// Output Results
mprintf('Degree of conversion = %4.3f ' , X);
mprintf('\n Composition of CO = %4.3f ' , y_CO);
mprintf('\n Composition of H2 = %4.3f ' , y_H2);
mprintf('\n Composition of CH3OH = %4.3f ' , y_CH3OH);
mprintf('\n Composition of He = %4.3f ' , y_He);
