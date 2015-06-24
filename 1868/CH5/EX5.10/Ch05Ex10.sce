// Scilab code Ex5.10: Pg 178 (2005)
clc; clear;

// Part (a)
h_cross = 1.05e-34;   // Reduced Plank's constant, J-s
h = 6.63e-34;    // Plank's constant, J-s
delta_t = 1.0e-08;    // Average time to measure the excited state, s
delta_E = h_cross/(2*delta_t);   // Uncertainty in energy of the excited state, J
// Since delta_E = h*delta_f, solving for delta_f
delta_f = delta_E/h;    // Line width of emitted light, Hz
printf("\nLine width of emitted light = %2.0e Hz", delta_f);

// Part (b)
c = 3e+08;    // Velocity of light, m/s
lamda = 500e-09;      // Wavelength of spectral line, m
f_o = c/lamda;      // Center frequency of spectral line, Hz
f_b = delta_f/f_o;   // Fractional broadening of spectral line
printf("\nFractional broadening of spectral line = %3.1e", f_b);

// Result
// Line width of emitted light = 8.0e+06 Hz
// Fractional broadening of spectral line = 1.3e-08
