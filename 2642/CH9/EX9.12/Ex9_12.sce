// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 9 : SYNCHRONOUS GENERATOR
// Example : 9.12

clc;clear; // clears the console and command history 

// Given data
E_1 = 220   // induced voltage per phase by an alternator1
E_2 = 220*exp(%i*5*%pi/180)   // induced voltage per phase by an alternator2
Z_1 = %i*3  // impedance of an alternator1
Z_2 = %i*4  // impedance of an alternator2
R = 5       // resistance in ohm
Z = 5

// caclulations 
I = (E_1*Z_2+E_2*Z_1)/(Z_1*Z_2+Z*(Z_1+Z_2))        // load current in A
V_t = I*R                                          // terminal voltage in V
I_a1 = ((E_1-E_2)*Z+E_1*Z_2)/(Z_1*Z_2+Z*(Z_1+Z_2)) // armature current in A
D = atand(imag(I),real(I))// from V_t
A = atand(imag(V_t),real(V_t))                                             // from I_a1
P_1 = abs(V_t*I_a1)*cosd(D-A)        // power per phase delivered by the 1st alternator in W

// display the result   
disp("Example 9.12 solution"); 
printf(" \n load current \n I = %.1f<%.2f degree \n", abs(I),atand(imag(I),real(I)) );
printf(" \n terminal voltage \n V_t = %.f<%.2f V \n", abs(V_t),atand(imag(V_t),real(V_t)) );
printf(" \n Power per phase delivered by the 1st alternator \n P_1 = %.2f W \n", P_1 );
printf(" \n NOTE : ERROR : Calculation mistakes in textbook \n")
