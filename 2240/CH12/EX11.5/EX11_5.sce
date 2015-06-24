// Grob's Basic Electronics 11e
// Chapter No. 11
// Example No. 11_5
clc; clear;
// How much is the resistance of a slab of germanium 0.2 cm long with a crosssectional area of 1 sqcm?

// Given data

roh = 55;         // roh or specific resistance=55 (for Germanium)
l = 0.2*10^-2;    // Lenght=100 feet
A = 1*10^-2;      // Area=1 sqcm

R = roh*(l/A);
disp (R,'The Resistance of a Slab of Germanium in Ohms')
