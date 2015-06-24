// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 8 : STARTING, CONTROL AND TESTING OF AN INDUCTION MOTOR
// Example : 8.4

clc;clear; // clears the console and command history 

// Given data
Z_icr = 0.04+%i*0.5          // inner cage impedance per phase at standstill
Z_ocr = 0.4+%i*0.2           // outer cage impedance per phase at standstill
V = 120                      // per phase rotor induced voltage at standstill in V

// caclulations 
Z_com = (Z_icr*Z_ocr)/(Z_icr+Z_ocr)      // combined impedance in ohm
I_2 = V/abs(Z_com)                       // rotor current per phase in A
R_2 = real(Z_com)                        // combined rotor resistance in ohm from Z_com
T = I_2^2*R_2                            // torque at stand still condition in syn.watt
s = 0.06                                // slip of 6%
Z_icr6 = 0.04/s+%i*0.5          // inner cage impedance per phase at standstill
Z_ocr6 = 0.4/s+%i*0.2           // outer cage impedance per phase at standstill
Z_com6 = ((Z_icr6)*Z_ocr6)/((Z_icr6)+Z_ocr6) // combined impedance in ohm at 6% slip
I2_6 = V/abs(Z_com6)                    // rotor current per phase in A at 6% slip
R2_6 = real(Z_com6)                             // combined rotor resistance in ohm from Z_com6
T6 = I2_6^2*R2_6                        // torque at stand still condition in syn.watt

// display the result 
disp("Example 8.4 solution"); 
printf(" \n Torque at stand still condition \n T = %.2f syn.watt \n", T );
printf(" \n Torque at stand 6 percent slip \n T6 = %.2f syn.watt \n", T6 );
