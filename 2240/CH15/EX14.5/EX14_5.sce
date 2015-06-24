// Grob's Basic Electronics 11e
// Chapter No. 14
// Example No. 14_5
clc; clear;
// A magnetic material has a ur of 500. Calculate the absolute u as B/H (a) in CGS units and (b) in SI units.

// Given data

ur = 500;         // ur=500
uoa = 1;          // uo for CGS Units=1
uob = 1.26*10^-6; // uo for SI Units=1.26 u

ua = ur*uoa;
disp (ua,'The Absolute u as B/H in CGS in (G/Oe)')

ub = ur*uob;
disp (ub,'The Absolute u as B/H in SI in (T/(A.t/m))')
disp ('i.e 630*10^-6 T/(A.t/m)')
