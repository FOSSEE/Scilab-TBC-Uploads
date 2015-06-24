// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.8


clc;clear; // clears the console and command history 

// Given data
V_t = 220   // shunt generator voltage in V
I_L = 146   // generator delivering current in A
R_sh = 50   // shunt field resistance in ohm
R_a = 0.012 // armature resistance in ohm
R_s = 0.02  // series field resistance in ohm
R_d = 0.03  // diverter field resistance in ohm

// caclulations 
I_sh = V_t/R_sh             // shunt field current in A
I_a = I_L+I_sh              // armature current in A
R_com = R_s*R_d/(R_s+R_d)   // combined resistance in ohm
E_g = V_t+(I_a*(R_a+R_com)) // generated voltage in V
P_lsd = I_a^2*R_com         // power loss in series and diverter in W
P_la = I_a^2*R_com         // power loss in the armature circuit resistance in W
P_lsh =  V_t*I_sh          // power loss in shunt field resistance in W
P_dl = I_L*V_t             // power delivered in W

// display the result 
disp("Example 4.8 solution");
printf(" \n Generated voltage \n E_g = %.1f V \n", E_g);
printf(" \n Power distribution \n P_dl = %.0f W \n", P_dl);
