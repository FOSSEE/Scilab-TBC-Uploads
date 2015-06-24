clear ;
clc;
// Example 20.3
printf('Example 20.3\n\n');
//page no. 596
// Solution 

//Given
G = 1000 ;// Volume of solution - [L]
x = [19.2,17.2,12.6,8.6,3.4,1.4]  ;// concentration of solute- [g/L] 
ac = [0,0.01,0.04,0.08,0.20,0.40]  ;// Activated charcoal added-[g/1000g sol] 
// Assume all concentration can be treated as g solute/1000 g sol.

y2 = (x(1)-x(2))/ac(2)  ;// -[ g solute/g carbon]
y3 = (x(1)-x(3))/ac(3)  ;// -[ g solute/g carbon]
y4 = (x(1)-x(4))/ac(4)  ;// -[ g solute/g carbon]
y5 = (x(1)-x(5))/ac(5)  ;// -[ g solute/g carbon]
y6 = (x(1)-x(6))/ac(6)  ;// -[ g solute/g carbon]

// Use polymath to get Freundlich isotherm to bo y= 37.919*x^(0.583)
y = 37.919*x(6)^(0.583) ;//From Freundlich isotherm
A_by_G = (x(1)-x(6))/y ;//Minimum mss of activated carbon required- [g carbon/1000 g sol.]

printf('Minimum mass of activated carbon required is %.2f g carbon/1000 g sol. \n ',A_by_G);