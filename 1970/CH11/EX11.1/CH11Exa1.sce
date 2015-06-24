// Scilab code Exa11.1 : : Page-535(2011) 
clc; clear;
V_0 = 10^5;        // Accelerating voltage, volts
C = 0.02e-006;        // Capacitance, farad
I = 4*1e-003;            // Current, ampere
f = 200;            // Frequency, cycles per sec
n = sqrt (V_0*f*C/I);    // Number of particles
delta_V = I*n*(n+1)/(4*f*C);
printf("\nThe optimum number of stages in the accelerator = %d", n);
printf("\nThe ripple voltage = %4.1f kV", delta_V/1e+003);

// Result
// The optimum number of stages in the accelerator = 10
// The ripple voltage = 27.5 kV  
