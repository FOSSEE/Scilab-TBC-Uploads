// Ex9_6  Page:188 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light in vacuum, m/s
m = 1.673e-027;    // Mass of protium, kg
m1 = m;    // Mass of first hydrogen atom, kg
m2 = m;    // Mass of second hydrogen atom, kg
nu_prime = 346;    // Wave number of the first rotational Raman line of hydrogen, per cm
B = nu_prime*1e+02/6;    // Rotational constant of a hydrogen molecule, per m
I = h/(8*%pi^2*B*c);    // Moment of inertia of hydrogen molecule, kg Sq.m
mu = m1*m2/(m1 + m2);    // Reduced mass of hydrogen molecule, kg
r = sqrt(I/mu);    // Bond length of hydrogen molecule, m
printf("\nThe bond length of hydrogen molecule = %4.2e m", r);

// Result
// The bond length of hydrogen molecule = 7.62e-011 m 