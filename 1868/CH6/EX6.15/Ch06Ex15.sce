// Scilab code Ex6.15: Pg 219 (2005)
clc; clear;
L = 1;  // For simplicity assume length of the box to be unity, unit
x_av = 2*L/%pi^2*integrate('theta*sin(theta)^2', 'theta', 0, %pi);  // Average value of x
x_sq_av = L^2/%pi^3*(integrate('theta^2', 'theta', 0, %pi)-integrate('theta^2*cos(2*theta)', 'theta', 0, %pi)); // Average value of x square
delta_x = sqrt(x_sq_av - x_av^2);   // Uncertainty in the position for this particle, unit
printf("\nThe average position of the particle in the box = L/%1d", x_av*4);
printf("\nThe uncertainty in the position for the particle = %5.3fL", delta_x);

// Result
// The average position of the particle in the box = L/2
// The uncertainty in the position for the particle = 0.181L 
