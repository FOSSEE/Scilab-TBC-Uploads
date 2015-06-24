// find minimum and maximum zener currents
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 1-1, page 9

clear;clc; close;

// Given data
R=820;// resistance in ohms
V=10;// breakdown voltage of diode
Vinmin=20;// minimum input voltage in volts
Vinmax=40;// maximum input voltage in volts

// Calculations
// voltage across resistor=input voltage-breakdown voltage
Ismin=(Vinmin-V)/R;// minimum zener current in amperes
Ismax=(Vinmax-V)/R;// maximum zener current in amperes
disp("Amperes",Ismin,"Minimum zener current =")
disp("Amperes",Ismax,"Maximum zener current =")

// results
// minimum zener current is 12.2 mAmperes
// maximum zener current is 36.6 mAmperes
