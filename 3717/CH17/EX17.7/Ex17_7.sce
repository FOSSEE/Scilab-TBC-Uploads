// Ex17_7 Page:341 (2014)
clc;clear;
h_cross = 1.05e-034;    // Reduced Planck's constant, Js
e = 1.6e-019;    // Charge on an electron, C
m_pi = 140e+006;    // Mass of pi_meson, eV/Sq.c
c = 3e+008;    // Speed of light in vacuum, m/s
r = h_cross*c/(m_pi*e);    // Range of the nuclear force, m
printf("\nThe range of the nuclear force = %3.1f fm", r/1e-015);

// Result
// The range of the nuclear force = 1.4 fm 