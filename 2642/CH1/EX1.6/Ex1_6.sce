// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.6

clc;clear; // clears the console and command history 


// Given data 
R = 10      // resistance in Ω
L = 15     // inductance reactance in Ω
V_L = 420 // voltage in V
f = 50   // frwuency in Hz

// caclulations 
V_an = (V_L/sqrt(3))*exp(%i*(-30)*(%pi/180))   // phase voltage
V_bn = (V_L/sqrt(3))*exp(%i*(-150)*(%pi/180)) // phase voltage
V_cn = (V_L/sqrt(3))*exp(%i*(90)*(%pi/180)) // phase voltage
Z_p = R+%i*L // phase impedance in Ω
I_L1 = V_an/Z_p  // line current
I_L2 = V_bn/Z_p  // line current
I_L3 = V_cn/Z_p  // line current
pf =  R/abs(Z_p) // lagging power factor 

// display the result 
disp("Example 1.6 solution");
printf(" \n Line currents are \n I_L1 = %.2f<%.2f A \n", abs(I_L1),atand(imag(I_L1),real(I_L1)) );
printf(" I_L2 = %.2f<% 2f A \n", abs(I_L2),atand(imag(I_L2),real(I_L2)) );
printf(" I_L3 = %.2f<% 2f A \n", abs(I_L3),atand(imag(I_L3),real(I_L3)) );
printf(" \n Power factor \n pf = %.1f lag \n", pf ); 
