// Scilab code Exa1.4 :  : Page 52 (2011) 
clc; clear;
K = 500*1.60218e-013;        // Kinetic energy of the electron,joule
h = 6.6262e-034;             // Planck's constant, joule sec
C = 3e+08;                   // Velocity of light, metre per sec
p = K/C;                     // Momentum of the electron, joule sec per meter
lambda = h/p;                // de Broglie wavelength, metre
A = 30*%pi/180;              // Angle (in radian)
r = lambda/(A*10^-15);       // Radius of the target nucleus, femtometre
printf("\nRadius of the target nucleus : %4.2f fm", r);

// Result
// Radius of the target nucleus : 4.74 fm
