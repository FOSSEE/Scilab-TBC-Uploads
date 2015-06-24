clear ;
clc;
// Example 15.2
printf('Example 15.2\n\n');
//Page No. 465
// Solution 

// Given
R = 10.73 ;// gas constant-[(cubic feet *psia)/(lb mol *R)]
a = 3.49 * 10^4 ;//(psia) *(cubic feet/lb mol)^2
b = 1.45 ;// (cubic feet)/(lb mol)
p = 679.7 ;// Pressure -[ psia]
n = 1.136 ;// Amount of mole -[lb mol]
T = 683 ;// Temperature - [degree R]

// Get V using Van der Waal's eqn. 
deff('[y]=g(V)','y=(V^3) -(((p*n*b) + (n*R*T))/p)*V^2 + ((n^2)*a*V/p) - ((n^3)*a*b)/p');
V=fsolve(b,g) ;// Volume of final solution (volume of vessel) [cubic feet]

printf('\nVolume of final solution (volume of vessel) is %.0f cubic feet.',V);