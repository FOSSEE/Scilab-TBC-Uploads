// Scilab code Ex5.1: Pg.187 (2008)
clc; clear;
h = 6.63e-034;    // Plank's constant, J-s
m = 2e-03;    // Mass of Ping-Pong ball, kg
v = 5;    // Speed of Ping-Pong ball, m/s
lamda = h/(m*v);    // De Broglie wavelength of Ping-Pong ball, m
printf("\nThe de-Broglie wavelength of Ping-Pong ball = %3.1e nm", lamda*1e+09);

// Result
// The de-Broglie wavelength of Ping-Pong ball = 6.6e-023 nm 