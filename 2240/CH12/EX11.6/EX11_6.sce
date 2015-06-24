// Grob's Basic Electronics 11e
// Chapter No. 11
// Example No. 11_6
clc; clear;
// A tungsten wire has a 14-Ohms R at 20°C. Calculate its resistance at 120°C.

// Given data

Tmax = 120;         // Temp(max)=120 degree Centigrates
Tmin = 20;          // Temp(min)=20 degree Centigrates
Ro = 14;            // Wire Resistance=14 Ohms
alpha = 0.005;      // Aplha=0.005 (for Tungsten)

delta = Tmax-Tmin;

Rt = Ro+Ro*(alpha*delta);
disp (Rt,'The Resistance at 120°C in Ohms')
