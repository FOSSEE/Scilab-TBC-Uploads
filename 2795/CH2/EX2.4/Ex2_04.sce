// Scilab Code Ex2.4 : Page-40 (2013)
clc; clear;
c = 1;    // For simplicity assume speed of light to be unity, m/s
bita = 0.600;    // Boost parameter
gama = 1/sqrt(1-bita^2);    // Relativistic factor
u_x_prime = 0;    // Speed of the protons in spaceship frame along x-axis, m/s
u_y_prime = 0.99*c;    // Speed of the protons in spaceship frame along y-axis, m/s
u_z_prime = 0;    // Speed of the protons in spaceship frame along z-axis, m/s
v = 0.60*c;    // Speed of the spaceship w.r.t. space station, m/s
u_x = (u_x_prime + v)/(1 + v/c^2*u_x_prime);    // Speed of protons in space station frame along x-axis, m/s
u_y = u_y_prime/(gama*(1 + v/c^2*u_x_prime));    // Speed of protons in space station frame along y-axis, m/s
u_z = u_z_prime/(gama*(1 + v/c^2*u_x_prime));    // Speed of protons in space station frame along y-axis, m/s
u = sqrt(u_x^2 + u_y^2 + u_z^2);    // The speed of the protons measured by an observer in the space station, m/s
printf("\nThe speed of the protons measured by an observer in the space station = %5.3f c units", u);

// Result
// The speed of the protons measured by an observer in the space station = 0.994 c units 