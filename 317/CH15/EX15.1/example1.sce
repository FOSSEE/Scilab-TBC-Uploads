// find diode current
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 15-1, page 524

clear; clc; close;

// Given data
Vb=10;// breakover voltage of the diode
V=15;// input voltage in volts
Ih=4*10^-3;// holding current in amperes
Vd=0.7 ;// voltage across diode in volts
R=100;// resistance in ohms

// Calculations
// as V>Vb ,the diode breaks over .Taking into consideration the voltage across the diode
I=(V-Vd)/R;// diode current in amperes 
disp("Amperes",I,"diode current=")

// Result
// Diode current is 143 mAmperes