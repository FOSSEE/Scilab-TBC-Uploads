// find closed-loop bandwidth
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 19-12, page 724

clear; clc; close;

// Given data
// OP-07A
AvolB=2500-1;// given
f2ol=20;// open-loop bandwidth in hertz

// Calculations
f2cl=(1+AvolB)*f2ol;// closed-loop bandwidth in hertz
disp("hertz",f2cl,"closed-loop bandwidth")

// Result
// closed-loop bandwidth is 50 KHertz