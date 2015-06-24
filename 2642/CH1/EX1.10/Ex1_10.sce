// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.10

clc;clear; // clears the console and command history 

// Given data
V_AN = 200 // voltage in V
 Z = 3+%i*4 // impedance in Ω

// caclulations 

V_AB = sqrt(3)*(V_AN*exp(%i*(30)*(%pi/180)))   // phase voltage in V
V_BC = sqrt(3)*(V_AN*exp(%i*(-90)*(%pi/180))) // phase voltage in V
V_CA = sqrt(3)*(V_AN*exp(%i*(150)*(%pi/180))) // phase voltage in V

I_ab = V_AB/Z  // magnitude of load current in A
I_bc = V_BC/Z  // magnitude of loadcurrent in A
I_ca = V_CA/Z // magnitude of  load current `in A

I_Aa = I_ab-I_ca // magnitude of  line current in A
I_Bb = I_bc-I_ab // magnitude of  line current in A
I_Cc = I_ca-I_bc // magnitude of  line current in A

// display the result 
disp("Example 1.10 solution");
printf(" \n Current in each load \n I_ab = %.2f<%.2f A \n", abs(I_ab),atand(imag(I_ab),real(I_ab)) );
printf(" I_bc = %.2f<% 2f A \n", abs(I_bc),atand(imag(I_bc),real(I_bc)) );
printf(" I_ca = %.2f<% 2f A \n\n", abs(I_ca),atand(imag(I_ca),real(I_ca)) );

printf(" \n Line currents \n I_Aa = %.2f<%.2f A \n", abs(I_Aa),atand(imag(I_Aa),real(I_Aa)) );
printf(" I_Bb = %.2f<% 2f A \n", abs(I_Bb),atand(imag(I_Bb),real(I_Bb)) );
printf(" I_Cc = %.2f<% 2f A \n\n", abs(I_Cc),atand(imag(I_Cc),real(I_Cc)) );

printf(" NOTE : The  line currents as given in this example in text book are wrong since ,the quesion says that both the three phase supply and load are balanced so the line should be balanced which they fail to do in text book.");
