// Scilab code Ex1.9: Pg.34 (2008)
clc; clear;
// For simplicity assume velocity of light be unity
c = 1;    // Velocity of light, m/s
L_p = 1;    // Proper length of stick, m
L = 0.914;    // Measured length of stick in S', m
// From length contraction, L = L_p/gama, solving for gama
gama = L_p/L;    // Relativistic factor = 1/sqrt(1-(v/c)^2)
v = sqrt(1-(L)^2)*c;    // Speed of the stick, m/s
printf("\nSpeed of the stick = %5.3fc", v); 

// Result
// Speed of the stick = 0.406c