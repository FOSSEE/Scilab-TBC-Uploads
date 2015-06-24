// Scilab code Ex4.3: Pg.158 (2008)
clc; clear;
theta = 45;    // Scattering angle, Degrees
delta_N = 450;    // Number of alpha particles scattered per minute, particles/min
// Since delta_N = C*sin((%pi/180)*(theta/2))^(-4), then solving for C, we get
C = delta_N*(sin((%pi/180)*(theta/2)))^4;    // Assumed constant
theta_new = 90;    // New scattered angle, Degrees
delta_n = C*sin((%pi/180)*(theta_new/2))^(-4);    // Number of alpha particles scattered per minute, particles/min
printf("\nThe number of alpha particles scattered per minute = %2d particles/min", ceil(delta_n));

// Result
// The number of alpha particles scattered per minute = 39 particles/min 