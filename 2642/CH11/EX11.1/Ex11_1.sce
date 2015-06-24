// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 11 : SINGLE-PHASE MOTORS
// Example : 11.1

clc;clear; // clears the console and command history 

// Given data
V = 220            // supply voltage in V
P = 4              // number of poles
f = 50             // frequency in Hz
N_l = 1450         // speed in rpm
P_tloss = 2000     // total power loss in W
R_2 = 10           // rotor resistance at standstill in ohm

// caclulations
N_s = 120*f/P       // synchronous speed in rpm
s_f = (N_s-N_l)/N_s // slip due to forward field
s_b = 2-s_f         // slip due to backward field
R_f = R_2/s_f       // effective rotor resistance due to forward slip in ohm
R_b = R_2/(2-s_f)   // effective rotor resistance due to backward slip in ohm

// display the result  
disp("Example 11.1 solution"); 
printf(" \n Slip due to forward field \n s_f = %.2f \n", s_f );
printf(" \n Slip due to backward field \n s_b = %.2f \n", s_b );
printf(" \n Effective rotor resistance due to forward slip \n R_f = %.2f ohm \n", R_f );
printf(" \n Effective rotor resistance due to backward slip \n R_b = %.2f ohm \n", R_b );

printf(" \n NOTE : for caclulating R_f, s_f is taken as 0.033333 so we got R_f=300");

