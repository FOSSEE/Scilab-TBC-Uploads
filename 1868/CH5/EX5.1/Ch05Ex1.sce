// Scilab code Ex5.1: Pg 154 (2005)
clc; clear;
h = 6.63e-34;     // Plank's constant, Js
m = 140e-03;     // Mass of baseball, kg
v = 27;     // Velocity of baseball, m/s
p = m*v;   // Momentum of baseball, kgm/s
lamda = h/p;   // de Broglie wavelength associated with baseball, m
printf("\nde-Broglie wavelength associated with baseball = %3.1e m", lamda);

// Result
// de-Broglie wavelength associated with baseball = 1.8e-34 m 
