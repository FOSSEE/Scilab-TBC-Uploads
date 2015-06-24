
// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.8

clc;clear; // clears the console and command history 

// Given data
V_L = 280 // generator phase voltage in V rms
Z_1 = 2+%i*3 // line impedance 
Z_L = 4+%i*5 // load impedance 

// caclulations 
Z_t = Z_1+Z_L // 
V_An = (V_L*exp(%i*(0)*(%pi/180)))    // phase voltage
V_Bn = (V_L*exp(%i*(-120)*(%pi/180))) // phase voltage
V_Cn = (V_L*exp(%i*(120)*(%pi/180)))  // phase voltage

I_Aa = V_An/Z_t   // line current for phase A in A
I_Bb = V_Bn/Z_t   // line current for phase B in  A
I_Cc = V_Cn/Z_t  // line current for phase C in A

V_an = I_Aa*Z_L  // voltage of load in V
V_bn = I_Bb*Z_L // voltage of load in V
V_cn = I_Cc*Z_L  // voltage of load in V

// display the result 
disp("Example 1.8 solution");
// There is error in the textbook regarding phasor angles of 
printf(" \n Line currents are \n I_Aa = %.2f<%.2f A \n", abs(I_Aa),atand(imag(I_Aa),real(I_Aa)) );
printf(" I_Bb = %.2f<% 2f A \n", abs(I_Bb),atand(imag(I_Bb),real(I_Bb)) );
printf(" I_Cc = %.2f<% 2f A \n\n", abs(I_Cc),atand(imag(I_Cc),real(I_Cc)) );
printf(" NOTE : PHASOR ANGLES CALCULATED IN TEXTBOOK FOR Van,Vbn & Vcn are wrong,\n because 4+j5 = 6.4<51.34, but in the textbook it is taken as 6.4<38.6");
// NOTE : PHASOR ANGLES CALCULATED IN TEXTBOOK FOR Van,Vbn & Vcn are wrong,because 4+j5 = 6.4<51.34, but in the textbook it is taken as 6.4<38.6
printf(" \n\n Phase voltages are ");
printf("\n V_an = %.2f<%.2f V \n", abs(V_an),atand(imag(V_an),real(V_an)) );
printf(" V_bn = %.2f<% 2f V \n", abs(V_bn),atand(imag(V_bn),real(V_bn)) );
printf(" V_cn = %.2f<% 2f V \n", abs(V_cn),atand(imag(V_cn),real(V_cn)) );
