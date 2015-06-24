// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 8 : STARTING, CONTROL AND TESTING OF AN INDUCTION MOTOR
// Example : 8.5

clc;clear; // clears the console and command history 

// Given data
V = 210      // supply voltage in V
f = 50       // supply frequency in Hz
P = 4        // number of poles
P_0 = 400    // i/p power in W
I_0 = 1.2    // line current in A
V_0 = 210    // line voltage
P_fw = 150   // total friction and windage losses in W
R = 2.2      // stator resistance between two terminals in ohm

// caclulations 
R_1 = R/2                               // per phase stator resistance in ohm
P_scu = 3*I_0^2*R_1                     // copper loss in W
P_core = P_0-P_fw-P_scu                 // stator core loss in W
R_0 = (V_0/sqrt(3))^2/(P_core/3)        // no-load resistance in ohm
// alternate approach
phi_0 = acosd(P_core/(sqrt(3)*V_0*I_0)) // power factor angle
X_0 = (V_0/sqrt(3))/(I_0*sind(phi_0))   // magnetizing reactance per phase in ohm

// display the result 
disp("Example 8.6 solution"); 
printf(" \n No-load resistance \n R_0 = %.1f ohm \n", R_0 );
printf(" \n Magnetizing reactance per phase \n X_0 = %.0f ohm \n", X_0 );

