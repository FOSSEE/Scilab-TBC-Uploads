// find closed-loop bandwidth
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 19-10, page 723

clear; clc; close;

// Given data
// LM308
Avol=250000;// given
f2ol=1.2;// open-loop bandwidth in hertz
Avcl=50;// closed loop voltage gain

// Calculations
f2cl=(Avol/Avcl)*f2ol;// closed-loop bandwidth in hertz
disp("hertz",f2cl,"closed-loop bandwidth")

// Result
// closed-loop bandwidth is 6 KHertz