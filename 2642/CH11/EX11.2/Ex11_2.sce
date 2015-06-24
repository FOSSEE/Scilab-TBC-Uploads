// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 11 : SINGLE-PHASE MOTORS
// Example : 11.2

clc;clear; // clears the console and command history 

// Given data
V_t = 220  // supply voltage in V
R_1 = 6    // equivalent parameters of single phase induction motor in ohm
R_2 = 6    // equivalent parameters of single phase induction motor in ohm
X_1 = 10   // equivalent parameters of single phase induction motor in ohm
X_2 = 10  // equivalent parameters of single phase induction motor in ohm
N = 1500   // speed in rpm
s = 0.03   // slip
X_m = 150  // equivalent parameters of single phase induction motor in ohm

// caclulations
Z_f = 0.5*%i*X_m*((R_2/s)+%i*X_2)/((R_2/s)+%i*(X_2+X_m)) // impedance due to forward field in ohm
R_f = real(Z_f) // from Z_f
Z_b = 0.5*%i*X_m*((R_2/(2-s))+%i*X_2)/((R_2/(2-s))+%i*(X_2+X_m)) // impedance due to backward field in ohm
R_b = real(Z_b) // from Z_b
Z_t = R_1+%i*X_1+Z_f+Z_b // total impedence in ohm 
I_1 = V_t/Z_t // input current in A
P_d = (abs(I_1))^2*(R_f-R_b)*(1-s) // power developed in W
T_d = 9.55*P_d/N // torque in N-m

// display the result  
disp("Example 11.2 solution"); 
printf(" \n input current \n I_1 = %.2f<%.2f A \n", abs(I_1),atand(imag(I_1),real(I_1)));
printf(" \n power developed \n P_d = %.2f \n", P_d );
printf(" \n torque \n T_d = %.2f \n", T_d );
printf("\n NOTE : ERROR : There is calculation mistake in Z_b in textbook. So there is change in answers from textbook")
