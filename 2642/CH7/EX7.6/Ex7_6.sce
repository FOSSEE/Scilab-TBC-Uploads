// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 7 : THREE-PHASE INDUCTION MOTOR
// Example : 7.6

clc;clear; // clears the console and command history 

// Given data
V_1 = 150              // supply voltage in V
P = 4                  // number of poles
f = 50                 // frequency in Hz
Z_1 = 0.12+%i*0.16     // per phase standstill stator impedance in ohm
Z_2 = 0.22+%i*0.28     // per phase standstill rotor impedance in ohm
R_2 = real(Z_2)             // from Z_2

// caclulations 
Z_eq = Z_1+Z_2                           // equivalent impedance in ohm
P_mech =  3*V_1^2/(2*(R_2+abs(Z_eq)))  // maximum mechanical power developed in W
s_mp = R_2/(abs(Z_eq)+R_2)              // slip
W_s = 2*%pi*2*f/P                       // since N_s = f/(P/2) and W_s = 2*%pi*N_s
W = (1-s_mp)*W_s                        // speed of rotor in rad/s
T_mxm = P_mech/W                        // miximum torque in N-m 

// display the result 
disp("Example 7.6 solution");
printf(" \n maximum mechanical power developed \n P_mech = %.f W \n", P_mech);
printf(" \n Maximum torque \n T_mxm = %.3f N-m \n", T_mxm);
printf(" \n Maximum slip \n s_mp = %.2f \n", s_mp);
printf(" \n NOTE : Error in calculation of P_mech and T_mxm ");

