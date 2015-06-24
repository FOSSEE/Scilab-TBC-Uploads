// Scilab code Ex2.3: Pg.74-75 (2008)
clc; clear;
// For simplicity let velocity of light be unity
c = 1;     // Velocity of light, m/s
m = 1e-09;     // Mass of micrometeorite, kg
u_x = 0.01*c;     // Velocity of micrometeorite
E = (0.5)*m*u_x^2+(m*c^2);    // Energy of micrometeorite measured by earth observer, J
p_x = m*u_x;    // Momentum of micrometeorite measured by earth observer, kg-m/s
u = 0.5*c;     // Velocity of S' frame, m/s
Beta = u/c;    // Simplification factor
gama = 1/sqrt(1-Beta^2);    // Simplification factor
E_s = gama*(E-u*p_x);     // Energy of micrometeorite measured by observer in the stationary frame, J
p_x_s = gama*(p_x-(u*E)/c^2);     // Momentum of micrometeorite measured by observer in the moving, kg-m/s
printf("\nThe energy of micrometeorite measured by observer in moving frame = %7.5e Sq.c J unit", E_s);
printf("\nThe momentum of micrometeorite measured by observer in moving frame = %4.2ec kg-m/s unit", p_x_s);

// Result
// The energy of micrometeorite measured by observer in moving frame = 1.14898e-009 Sq.c J unit
// The momentum of micrometeorite measured by observer in moving frame = -5.66e-010c kg-m/s unit 