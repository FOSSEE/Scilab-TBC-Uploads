// Scilab code Ex5.8: Pg 177 (2005)
clc; clear;
h_cross = 1.05e-34;    // Reduced Plank's constant, J-s
delta_x = 15;      // Uncertainity in position, m
v_x = 2;      // Velocity of ball, m/s
m = 100e-03;     // Mass of ball, kg
delta_p_x = h_cross/(2*delta_x);    // Uncertainity in momentum, kg-m/s
delta_v_x = delta_p_x/m;     // Minimum spread in velcoity, m/s
U_r = delta_v_x/v_x;     // Relative uncertainity in velocity of ball
printf("\nThe minimum spread in velcoity of ball = %3.1e m/s", delta_v_x);
printf("\nThe relative uncertainity in velocity of ball = %4.2e", U_r);

// Result
// The minimum spread in velcoity of ball = 3.5e-35 m/s
// The relative uncertainity in velocity of ball = 1.75e-35 
