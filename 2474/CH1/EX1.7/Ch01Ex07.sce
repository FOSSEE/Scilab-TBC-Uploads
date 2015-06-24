// Scilab code Ex1.7: Pg.32 (2008)
clc; clear;
Beta = 0.5;     // Boost factor = v/c
delta_ct_dash = 2;    // Distance, m
gama = 1.15;    // Relativistic factor = 1/sqrt(1-(v/c)^2)
delta_x = gama*Beta*delta_ct_dash;    // Spatial separation of events, m
printf("\nSpatial separation of events measured in S frame = %4.2f m", delta_x);

// Result
// Spatial separation of events measured in S frame = 1.15 m 