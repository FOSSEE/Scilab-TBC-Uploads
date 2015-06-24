// Scilab code Ex6.7: Pg 207 (2008)
clc; clear;
l = 0.25;   // Length of the rectangular coil, m
d = 0.2;    // Width of rectangular coil, m
N = 80;     // Number of turns of the rectangular coil
B = 0.075;  // Magnetic flux density, tesla
n = 3000/60;   // Frequency of revolution of the coil, rev/s
v = n*%pi*d;    // Linear speed with which the coil sides move, m/s
t = 2e-03;      // Time after the emf crosses zero, s

// Part (a)
// As e = 2*N*B*l*v*sin(2*%pi*f*t) volt, and for maximum value of sin(2*%pi*f*t) = 1
E_m = 2*N*B*l*v*(1);  // Amplitude of emf, volt
E = 0.707*E_m;      // rms value of emf, volt
E_av = 0.637*E_m;   // Average value of emf, volt
// For a two pole field system, 
f = n;      // Frequency of generated waveform, Hz

// Part (b)
T = 1/f;    // Time period of generated waveform, Hz

// Part (c)
e = E_m*sin(2*%pi*f*t);     // Instantaneous value at time 2 ms after zero, volt

printf("\nThe amplitude, rms and average value of emf = %5.2f V, %5.2f V and %5.2f V resp.", E_m, E, E_av);
printf("\nThe frequency and time period of generated waveform = %2d Hz and %2d ms resp.", f, T/1e-03);
printf("\nThe instantaneous value of emf at time 2 ms after crossing zero = %4.1f V", e);

// Result
// The amplitude, rms and average value of emf = 94.25 V, 66.63 V and 60.04 V resp.
// The frequency and time period of generated waveform = 50 Hz and 20 ms resp.
// The instantaneous value of emf at time 2 ms after crossing zero = 55.4 V
