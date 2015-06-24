// Scilab Code Ex5.8 : Page-187 (2013)
clc; clear;
dx = 17.5;    // The uncertainty in position, m
h = 1.05e-034;    // Reduced Planck's constant, Js
dp_x = h/(2*dx);    // The uncertainty in momentum, kgm/s
printf("\nThe unecrtainty in momentum of the ball = %1.0e kg-m/s", dp_x);
dx = 0.529e-010;    // The uncertainty in position, m
dp_x = h/(2*dx);    // The uncertainty in momentum, kgm/s
printf("\nThe uncertainty in momentum of the electron = %1.0e kg-m/s", dp_x);

// Result
// The unecrtainty in momentum of the ball = 3e-036 kg-m/s
// The uncertainty in momentum of the electron = 1e-024 kg-m/s 
