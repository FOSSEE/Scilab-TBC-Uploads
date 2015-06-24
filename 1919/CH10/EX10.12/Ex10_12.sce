
// Theory and Problems of Thermodynamics
// Chapter 10
// Chemical Thermodynamics
// Example 12

clear ;clc;

//Given data
T = 298                 // reactor temperature in K
P = 0.1                 // reactor pressure in MPa
K = 2.111               // equilibrium constant

// Calculations
// Let X be the degree of conversion of CO
//                  CO2(g) + H2O(g) => CO2(g) + H2(g)
// Initial (mol)      1        1         0       0  
// at equilibrium    1-X      1-X        X       X
// molefraction     (1-X)/2  (1-X)/2    X/2     X/2
// Ky = ((X/2)^2)/(((1-X)/2)^2) => (X/(1-X))^2
// K = Ky*P^(sum(Vi))       P=1 bar; sum(Vi)=0
deff('y=conver(X)','y = K -(X^2/(1-X)^2)') 
X = fsolve(0.5,conver)                    

y_CO = (1-X)/2
y_H2O = (1-X)/2
y_CO2 = X/2
y_H2 = X/2


// Output Results
mprintf('Degree of conversion = %4.3f ' , X);
mprintf('\n Composition of CO = %4.3f ' , y_CO);
mprintf('\n Composition of H2O = %4.3f ' , y_H2O);
mprintf('\n Composition of CO2 = %4.3f ' , y_CO2);
mprintf('\n Composition of H2 = %4.3f ' , y_H2);
