// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.9

clc;clear; // clears the console and command history 

// Given data
V_P = 340 //  phase voltage in V 
Z = 6+%i*8 // per phase impedance 
 
// caclulations 

V_AN = (V_P/exp(%i*(0)*(%pi/180)))   // phase voltage
V_BN = (V_P/exp(%i*(-120)*(%pi/180))) // phase voltage
V_CN = (V_P/exp(%i*(120)*(%pi/180))) // phase voltage

I_Aa = V_AN/Z   // line current for phase A in A
I_Bb = V_BN/Z  // line current for phase B in  A
I_Cc = V_CN/Z  // line current for phase C in A



// display the result 
disp("Example 1.9 solution");
printf(" \n Line currents are \n I_Aa = %.2f<%.2f A \n", abs(I_Aa),atand(imag(I_Aa),real(I_Aa)) );
printf(" I_Bb = %.2f<% 2f A \n", abs(I_Bb),atand(imag(I_Bb),real(I_Bb)) );
printf(" I_Cc = %.2f<% 2f A \n", abs(I_Cc),atand(imag(I_Cc),real(I_Cc)) );
printf(" \n The load is balanced, so the value of the neutral current will be zero")
