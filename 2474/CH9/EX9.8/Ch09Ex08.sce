// Scilab code Ex9.8: Pg.404 (2008)
clc; clear;
h = 6.626e-034;    // Planck's constant, Js
// For Ruby laser
f = 4.32e+14;    // Frequency, per s
delta_f = 3.3e+11;    // Width of spectral line, per s
t_s = 3e-03;    // Life time for spontaneous emission, s
c = 3e+08;    // Velocity of light, m/s
t_p = 2.9e-08;    // Characteristic decay time, s
n = 1.76;    // Refractive index
N = 2e+019;    // Cr3+ concentration in Ruby Laser, per cm^3
delta_nc = 4*(%pi)^2*f^2*delta_f*t_s/((c/n)^3*t_p);    // Critical population inversion density, 
printf("\nThe citical population density for Ruby laser = %4.2e atoms/m^3 or = %4.2e atoms/cm^3", delta_nc, delta_nc*1e-06);
P_ruby = N/2*(h*f/t_s);    // Power requirement for ruby laser, W/cc

// For He-Ne laser
f = 4.74e+14;    // Frequency, per s
delta_f = 9e+08;    // Width of spectral line, per s
t_s = 1e-07;    // Life time for spontaneous emission, s
c = 3e+08;    // Velocity of light, m/s
t_p = 3.3e-07;     // Characteristic decay time, s
n = 1;    // Refractive index
delta_nc = 4*%pi^2*f^2*delta_f*t_s/((c/n)^3*t_p);
printf("\nThe critical population density for He-Ne laser = %4.2e atoms/m^3 or = %4.2e atoms/cm^3", delta_nc, delta_nc*1e-06);
printf("\nThe critical population density is far smaller for the He-Ne laser.");
P_He_Ne = delta_nc/1e+06*(h*f/t_s);    // Power requirement for He-Ne laser, W/cc
printf("\n\nThe power requirement of He_Ne laser = %3.1e W/cc", P_He_Ne)
printf("\nThe power requirement of Ruby laser = %3d W/cc", ceil(P_ruby));

// Result
// The citical population density for Ruby laser = 5.08e+022 atoms/m^3 or = 5.08e+016 atoms/cm^3
// The critical population density for He-Ne laser = 8.96e+013 atoms/m^3 or = 8.96e+007 atoms/cm^3
// The critical population density is far smaller for the He-Ne laser.

// The power requirement of He_Ne laser = 2.8e-004 W/cc
// The power requirement of Ruby laser = 955 W/cc 