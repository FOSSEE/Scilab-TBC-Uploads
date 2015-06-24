// Scilab code Ex1.2: Pg.18 (2005)
clc; clear;
c = 3e+08;      // Velocity of light, m/s
v = 0.95*c;     // Velocity of observer, m/s
T_proper = 3;   //  Proper time period of pendulum in rest frame, s
gama = 1/(sqrt(1 - (v/c)^2));       // Multiplying factor
// From time-dilation formula, we have
T = gama*T_proper;                  // Time period of pendulum w.r.t to moving observer, s
printf("\nTime period of pendulum w.r.t to moving observer = %3.1f s", T);

// Result
// Time period of pendulum w.r.t to moving observer = 9.6 s
