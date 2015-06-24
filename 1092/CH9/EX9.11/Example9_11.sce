// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-11

clear; clc; close; // Clear the work space and console.

// Given data
// 3-phase WRIM
V_L = 208 ; // Voltage rating of the WRIM in volt
P = 6 ; // Number of poles in WRIM
f = 60 ; // Frequency in Hz
P_o = 7.5 ; // Power rating of WRIM in hp
S_r = 1125 ; // Full-load rotor speed in rpm
R_r = 0.08 ; // Rotor resistance in ohm/phase 
X_lr = 0.4 ; // Locked rotor resistance in ohm/phase

// Calculations
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field
// case a
E_lr = (V_L / sqrt(3))/2 ; // Locked rotor voltage per phase

// case b
s = (S - S_r)/S ; // Full-load rated slip
I_r = E_lr / sqrt( (R_r/s)^2 + (X_lr)^2 ); // Rotor current in A per phase at rated speed

// case c
P_in = ( (I_r)^2 * R_r )/s ; // Rated rotor power input per phase in (W/phase)

// case d
P_RL = ( (I_r)^2 * R_r ); // Rated rotor copper loss per phase (in W/phase)

// case e
// Subscript W in P_d indicates calculating P_d in W
P_d_W = P_in - P_RL ; // Rotor power developed per phase (in W/phase)
// Subscript hp in P_d indicates calculating P_d in hp
P_d_hp = P_d_W/746 ; // Rotor power developed per phase (in hp/phase)

// case f
// subscript 1 in T_d indicates method 1 for calculating T_d
hp = P_d_hp ;
T_d1 = (hp*5252)/S_r ; // Rotor torque developed per phase in lb-ft

// subscript 2 in T_d indicates method 2 for calculating T_d
T_d2 = 7.04*(P_in/S); // Rotor torque developed per phase in lb-ft

// case g
T_dm = 3*T_d1 ; // Total rotor torque in lb-ft

// case h
T_o = 7.04*(P_o*746)/S_r ; // Total output rotor torque in lb-ft

// Display the results
disp("Example 9-11 Solution : ");

printf(" \n    Note: Slight variations in the answers I_r,P_in,P_RL,P_d,T_d ");
printf(" \n          are because of non-approximation of E_lr and (R_r/s)^2 + (X_lr)^2");
printf(" \n          while calulating in scilab.\n");

printf(" \n a: Locked rotor voltage per phase :\n    E_lr = %d V\n",E_lr);

printf(" \n b: slip :\n    s = %.4f ",s);
printf(" \n\n    Rotor current per phase at rated speed :\n    I_r = %.2f A/phase\n",I_r);

printf(" \n c: Rated rotor power input per phase :\n    P_in = %.f W/phase\n",P_in);

printf(" \n d: Rated rotor copper loss per phase :\n    P_RL = %.1f W/phase\n",P_RL);

printf(" \n e: Rotor power developed per phase ");
printf(" \n    P_d = %.f W/phase \n    P_d = %.2f hp/phase\n",P_d_W,P_d_hp);

printf(" \n f: Rotor torque developed per phase : ");
printf(" \n    (method 1)\n    T_d = %.1f lb-ft/phase",T_d1);
printf(" \n\n    (method 2)\n    T_d = %.1f lb-ft/phase\n",T_d2);

printf(" \n g: Total rotor torque : \n    T_dm = %d lb-ft\n",T_dm);

printf(" \n h: Total output rotor torque : \n    T_o = %d lb-ft",T_o);
