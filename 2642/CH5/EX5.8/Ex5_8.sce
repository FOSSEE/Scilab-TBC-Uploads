// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : DIRECT CURRENT MOTORS
// Example : 5.8

clc;clear; // clears the console and command history 

// Given data
I_L1 = 5     // dc shunt motor current in A
V_t = 230    // supply voltage in V
R_a = 0.25   // armature resistance in ohm
R_sh = 115   // field resistance in ohm
I_L2 = 40    // dc shunt motor current in A


// caclulations 
// at noload condition
P_in1 = V_t*I_L1                        // input power in W
I_sh = V_t/R_sh                         // shunt field current in A
I_a1 = I_L1-I_sh                        // armature current in A
P_acu1 = I_a1^2*R_a                     // armature copper loss in W
P_shcu = I_sh^2*R_sh                    //shunt field copper loss in W
P_iron_friction = P_in1-(P_acu1+P_shcu) // iron and friction losses in W
// under load condition
I_a2 = I_L2-I_sh                        // armature current in A
P_acu2 = I_a2^2*R_a                     // armature copper loss in W
P_loss = P_iron_friction+P_shcu+P_acu2  // total losses in W
P_in2 = V_t*I_L2                        // input power in W
P_0 = P_in2-P_loss                      // output power in W
n = (P_0/P_in2)*100                     // efficiency in percent

// display the result 
disp("Example 5.8 solution");
printf(" \n iron and friction losses \n P_iron_friction = %.2f W \n", P_iron_friction );
printf(" \n efficiency \n n = %.0f percent \n", n)


