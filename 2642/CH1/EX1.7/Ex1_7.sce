// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.7

clc;clear; // clears the console and command history 


// Given data 
Z_p = 10+%i*15 // per phase impedance in Ω
V_ab = 420                          // magnitude of phase voltage in V
V_bc = 420*exp(%i*(-120)*(%pi/180))// magnitude of phase voltage in V
V_ca = 420*exp(%i*(120)*(%pi/180)) // magnitude of phase voltage in V



// caclulations 
I_ab = V_ab/Z_p  // phase current in A
I_bc = V_bc/Z_p // phase current in A
I_ca = V_ca/Z_p // phase current in A
I_P = V_ab/abs(Z_p) 
I_L = sqrt(3)*I_P // line current in A

// display the result 
disp("Example 1.7 solution");
printf(" \n Phase currents are \n I_ab = %.2f<%.2f A \n", abs(I_ab),atand(imag(I_ab),real(I_ab)) );
printf(" I_bc = %.2f<% 2f A \n", abs(I_bc),atand(imag(I_bc),real(I_bc)) );
printf(" I_ca = %.2f<% 2f A \n", abs(I_ca),atand(imag(I_ca),real(I_ca)) );
printf(" \n Line current \n I_L = %.2f A \n", I_L); 
