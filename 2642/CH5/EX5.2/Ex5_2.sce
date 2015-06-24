// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : DIRECT CURRENT MOTORS 
// Example : 5.2 

clc;clear; // clears the console and command history 
// Given data 
I = 20      // total current in A
V_t = 250;  // supply voltage in volt 
R_sh = 200;  // shunt field resistance in Ω
R_a = 0.3;   // armature resistance in Ω

// caclulations 
 I_sh = V_t/R_sh;     // shunt field current in A
 I_a = I-I_sh'        // armature current 
 E_b = V_t - R_a*I_a; // the back emf in V 
 P_md = E_b*I_a;      // mechanical power developed in W 
 
 // display the result 
disp("Example 5.2 solution");
printf("\n The back emf is \n E_b = %.1f V \n\n",E_b ); 
printf(" \n Mechanical power developed is \n P_md = %.1f W" ,P_md );
printf(" \n NOTE : error in calculation they has taken I_a=18.13, instead of I_a=18.75");
