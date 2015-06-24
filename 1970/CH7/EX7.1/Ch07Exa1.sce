// Scilab code Exa7.1: : Page-292 (2011)
clc; clear;
h = 6.6261e-034;            // Planck's constant, joule sec
C = 2.998e+08;            // Velocity of light, metre per sec
f = 2;                    // Radius of focal circle, metre
d = 1.18e-010;            // Interplaner spacing for quartz crystal, metre
E_1 = 1.17*1.6022e-013;        // Energy of the gamma rays, joule
E_2 = 1.33*1.6022e-013;        // Energy of the gamma rays, joule
D = h*C*f*(1/E_1-1/E_2)*1/(2*d);        //Distance to be moved for obtaining first order reflection for two different energies, metre
printf("\nThe distance to be moved for obtaining first order Bragg reflection = %4.2e metre", D);

// Result
// The distance to be moved for obtaining first order Bragg reflection = 1.08e-003 metre 