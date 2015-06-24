// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.5


clc;clear; // clears the console and command history 

// Given data
P = 6 // number of poles
Z = 600 // number of conductors
phi = 0.05 // flux per pole in Wb
N = 1000 // speed in rpm
I_a = 120 // generetor supply current in A

// caclulations 
A=6 // for lap-wound A=P
E_g = (P*phi*Z*N)/(60*A) // generated voltage in V
T_em = ((P*Z*phi)/(2*%pi*A))*I_a // electromagnetic torque in N-m


// display the result 
disp("Example 4.5 solution");
printf(" \n Generated voltage \n E_g = %.0f V \n", E_g);
printf(" \n Electromagnetic torque \n T_em = %.2f N-m \n", T_em);
