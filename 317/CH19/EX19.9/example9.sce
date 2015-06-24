// find closed-loop bandwidth
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 19-9, page 723

clear; clc; close;

// Given data
// LF411A
AvolB=1000-1;// given
f2ol=160;// open-loop bandwidth in hertz

// Calculations
f2cl=(1+AvolB)*f2ol;// closed-loop bandwidth in hertz
disp("hertz",f2cl,"closed-loop bandwidth")

// Result
// closed-loop bandwidth is 160 KHertz