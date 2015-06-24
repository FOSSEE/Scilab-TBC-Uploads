// Scilab code Exa12.5 : : Page-574 (2011)
clc; clear;
L = 1;    // For simplicity assume thermal diffusion length to be unity, unit
x_bar = integrate('x*exp(-x/L)', 'x', 0, 100);    // Average distance travelled by the neutron, unit
x_rms = sqrt(integrate('x^2*exp(-x/L)', 'x', 0, 100));    // Root mean square of the distance trvelled by the neutron, unit
printf("\nThe average distance travelled by the neutron = %d*L", x_bar);
printf("\nThe root mean square distance travelled by the neutron = %5.3fL = %5.3fx_bar", x_rms, x_rms);

// Result
// The average distance travelled by the neutron = 1*L
// The root mean square distance travelled by the neutron = 1.414L = 1.414x_bar 
 