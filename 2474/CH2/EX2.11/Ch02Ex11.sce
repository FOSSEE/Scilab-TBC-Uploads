// Scilab code Ex2.11: Pg.88 (2008)
clc; clear;
Beta = 0.6;    // Simplification factor = v/c
// For simplicity let c be unity, i.e
c = 1;    // Velocity of light, m/s
v = 0.6*c;     // Relative velocitty of system, m/s
M = 10;    // Mass of the system in S frame, kg
gama = 1/sqrt(1-(Beta^2));    // Simplification factor
E = M*c^2;    // Energy of system in S frame
p_x = 0;    // Momentum of system along X-direction, kg-s
E_dash = gama*(E-v*p_x);     // Energy of systen in S_prime frame, kg-m/s
p_x_dash = gama*(p_x-(v*E)/c^2);     // Momentum of system along X-direction in S_prime frame, kg-s
m = sqrt((E_dash/(c)^2)^2 - (p_x_dash/c)^2);     // Mass of system in S_prime frame, kg
printf("\nThe mass of the system in S_prime frame = %2d kg",m);

// Result
// The mass of the system in S_prime frame = 10 kg 