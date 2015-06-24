// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 10: SINGLE-PHASE MOTORS
// Example 10-4

clear; clc; close; // Clear the work space and console.

// Given data (from Table 10-2)
T_r = 1 ; // Rated torque in lb-ft
T_s = 4.5 ; // Starting torque in lb-ft (rfom Locked-Rotor Data)
T_br = 2.5 ; // Breakdown torque in lb-ft (Breakdown-Torque Data)

// Rated Load Data
P = 400 ; // Rated input power in W
V = 115 ; // Rated input voltage in volt
I_t = 5.35 ; // Rated input current in A
Speed = 1750 ; // Rated speed in rpm

// Calculations
// case a
ratio_s_r_T = T_s / T_r ; // Ratio of starting to rated torque

// case b
ratio_s_br_T = T_br / T_r ; // Ratio of breakdown to rated torque

// case c
P_o_hp = 1 / 3 ; // Power output in hp
P_o = P_o_hp * 746 ; // Power output in W 
eta = P_o / P * 100 ; // Rated load efficiency

// case d
S = V * I_t ; // VA rating of the motor
cos_theta = P / S ; // Rated load - power factor

// case e
T = 1 ; // Rated load torque in lb-ft
hp = (T*Speed)/5252 ; // Rated load horsepower

// Display the results
disp("Example 10-4 Solution : ");

printf(" \n a: T_s/T_r = %.1f \n ",ratio_s_r_T );

printf(" \n b: T_br/T_r = %.1f \n ",ratio_s_br_T );

printf(" \n c: Rated load efficiency \n    η = %.1f percent \n ",eta );

printf(" \n d: Rated load power factor\n    cosθ = %.4f \n ",cos_theta );

printf(" \n e: Rated load horsepower\n    hp = %.4f hp ",hp);
