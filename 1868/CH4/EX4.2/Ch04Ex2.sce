// Scilab code Ex4.2: Pg 113 (2005)
clc; clear;
 V = 200;    // Electrc potential, V
theta = 0.20;   // Angle, radians
l = 0.050;    // Length of plates, m
d = 1.5e-02;    // Distance between two plates, m
c_m_r = 1.76e+11;    // Charge-to-mass ratio, C/kg
// Since e/m_e = (V*theta)/(B^2*l*d), solving for B
B = sqrt((V*theta)/(l*d*c_m_r));    // Magnetic field, T
printf("\nThe magnetic field required to produce the deflection of %4.2f rad = %3.1e T", theta, B);

// Result
// The magnetic field required to produce the deflection of 0.20 rad = 5.5e-04 T 
