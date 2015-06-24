// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 10: SINGLE-PHASE MOTORS
// Example 10-2

clear; clc; close; // Clear the work space and console.

// Given data as per Ex.10-1
hp = 0.25 ; // Power rating of the single-phase motor in hp
V = 110 ; // Voltage rating of the single-phase motor in V
I_s = 4 ; // Starting winding current
phi_I_s = 15 ; // Phase angle in degrees by which I_s lags behind V
I_r = 6 ; // Running winding current
phi_I_r = 40 ; // Phase angle in degrees by which I_r lags behind V 

// Calculations
// case a
P_s = V * I_s * cosd(phi_I_s); // Power dissipated in the starting winding in W

// case b
P_r = V * I_r * cosd(phi_I_r); // Power dissipated in the running winding in W

// case c
P_t = P_s + P_r ; // Total instantaneous power dissipated during starting in W

// case d
P_r_d = P_r ; // Total steady-state power dissipated during running in W

// case e
eta = ( hp * 746 ) / P_r * 100 ; // Motor efficiency in percent

// Display the results
disp("Example 10-2 Solution : ");
printf(" \n a: Power dissipated in the starting winding\n    P_s = %d W \n", P_s );

printf(" \n b: Power dissipated in the running winding\n    P_r = %.1f W \n", P_r );

printf(" \n c: Total instantaneous power dissipated during starting\n    P_t = %.1f W \n", P_t );

printf(" \n d: Total steady-state power dissipated during running\n    P_r = %.1f W \n", P_r_d );

printf(" \n e: Motor efficiency \n    η = %.f percent \n", eta );
