// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.5

clc;clear; // clears the console and command history 


// Given data 
V_P = 200                           // magnitude of phase voltage 
V_an = 200                          // magnitude of phase voltage in V
V_bn = 200*exp(%i*(-120)*(%pi/180)) // magnitude of phase voltage in V
V_cn = 200*exp(%i*(120)*(%pi/180))  // magnitude of phase voltage in V

// caclulations 
V_L = sqrt(3)*V_P // magnitude of line voltage in V

// display the result 
disp("Example 1.5 solution");
printf(" \n Magnitude of line voltage \n V_L = %.2f V ", V_L); 
