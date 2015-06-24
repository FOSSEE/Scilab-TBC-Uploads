// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.11

clc;clear; // clears the console and command history 

// Given data
Z = 3+%i*4 // impedance in Ω
V_AN = 150 // voltage in V
R = 3 // resistance in Ω from Z

// caclulations 

V_AN = (150*exp(%i*(0)*(%pi/180)))   //source voltage in V
V_BN = (150*exp(%i*(-120)*(%pi/180))) // source voltage in V
V_CN = (150*exp(%i*(120)*(%pi/180))) // source voltage in V

I_Aa = V_AN/Z   // line current in A
I_Bb = V_BN/Z   // line current in  A
I_Cc = V_CN/Z  // line current in A

pf = R/abs(Z)    // power factor
I = V_AN/abs(Z) // current in A
P = V_AN*I*pf  // power supplied in W
P_t = 3*P     // total power supplied in W

// display the result 
disp("Example 1.11 solution");
printf(" \n Line currents are \n I_Aa = %.2f<%.2f A \n", abs(I_Aa),atand(imag(I_Aa),real(I_Aa)) );
printf(" I_Bb = %.2f<% 2f A \n", abs(I_Bb),atand(imag(I_Bb),real(I_Bb)) );
printf(" I_Cc = %.2f<% 2f A \n\n", abs(I_Cc),atand(imag(I_Cc),real(I_Cc)) );
printf(" Power factor \n pf = %.1f \n", pf);
printf(" \n Power supplied to each phase is \n P = %.2f W \n", P);
printf(" \n Total power supplied \n P_t = %.2f W \n", P_t);

