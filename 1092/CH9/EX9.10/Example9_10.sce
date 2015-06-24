// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-10

clear; clc; close; // Clear the work space and console.

// Given data
P = 4 ; // Number of poles in WRIM
f = 60 ; // Frequency in Hz
V = 220 ; // Line voltage in volt
V_p = 220 ; // Phase voltage in volt (delta connection)
hp_WRIM = 1 ; // Power rating of WRIM in hp
S_r = 1740 ; // Full-load rated speed in rpm 
R_r = 0.3 ; // rotor resistance per phase in ohm/phase 
R_x = 0.7 ; // Added resistance in ohm/phase 
X_lr =1 ; // Locked rotor reactance in ohm

// Calculations
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field
// case a
E_lr = V_p / 4 ; // Locked-rotor voltage per phase

// case b
s = ( S - S_r)/S ; // slip
I_r = E_lr / sqrt( (R_r/s)^2 + (X_lr)^2 ); // Rotor current per phase at rated speed

// case c
P_in = ((I_r)^2 * R_r)/s ; // Rated rotor power input per phase

// case d
P_RL = (I_r)^2 * R_r ; // Rated copper loss per phase

// case e
P_d_W = P_in - P_RL ; // Rotor power developed per phase in W
P_d_hp = P_d_W/746 ; // Rotor power developed per phase in hp

// case f
hp = P_d_hp ; // Rotor power developed per phase in hp
T_d1 = (hp*5252)/S_r ; // Rotor torque developed in lb-ft per phase by method 1
T_d2 = 7.04*(P_in/S) ; // Rotor torque developed in lb-ft per phase by method 2

T_dm = 3*T_d1 ; // Total rotor torque in lb-ft

// Display the results
disp("Example 9-10 Solution : ");
printf(" \n a: Locked-rotor voltage per phase : \n    E_lr = %d V \n ",E_lr);

printf(" \n b: slip : \n    s = %.2f \n",s);
printf(" \n    Rotor current per phase at rated speed:\n    I_r = %.3f A/phase \n ",I_r);

printf(" \n c: Rated rotor power input per phase :\n    P_in = %d W/phase \n ",P_in);

printf(" \n d: Rated copper loss per phase : \n    P_RL = %.2f W \n ",P_RL);

printf(" \n e: Rotor power developed per phase in W :\n    P_d = %.1f W/phase ",P_d_W);
printf(" \n\n    Rotor power developed per phase in hp :\n    P_d = %.2f hp/phase \n ",P_d_hp);

printf(" \n f: Rotor torque developed in lb-ft per phase :\n    T_d = %.1f lb-ft  (method 1)",T_d1);
printf(" \n\n    T_d = %.1f lb-ft  (method 2)",T_d2);
printf(" \n\n    Total rotor torque : \n    T_dm = %.1f lb-ft )\n ",T_dm);
