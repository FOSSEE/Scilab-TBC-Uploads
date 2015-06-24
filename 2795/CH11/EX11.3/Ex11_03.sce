
// Scilab Code Ex11.3: Page-402 (2014)
clc; clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J
rho = 5.92e-008;    // Resistivity of the zinc at room temperature, ohm-m
B = 0.25;    // Magnetic field applied perpendicular to the strip, T
x = 10.0e-002;    // Length of the zinc strip, m
y = 2.0e-002;    // Width of the zinc strip, m
V = 20e-003;    // Potential difference applied across the strip, V
I = 0.400;    // Current through the strip, A
V_H = 0.56e-006;    // Hall voltage that appeared across the strip, V
z = rho*x*I/(y*V);    // Thickness of the strip, m
n = I*B/(e*V_H*z);    // Number density of the charge carriers, per metre cube
printf("\nThe thickness of the zinc strip = %4.2e m", z);
printf("\nThe number density of the charge carriers = %4.2e per metre cube", n);
printf("\nThe charge carries in zinc are positive.");

// Result
// The thickness of the zinc strip = 5.92e-006 m
// The number density of the charge carriers = 1.89e+029 per metre cube
// The charge carries in zinc are positive. 