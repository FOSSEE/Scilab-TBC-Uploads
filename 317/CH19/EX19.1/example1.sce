// find feedback fraction,ideal and exact closed-loop voltage gain,percent error
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 19-1, page 709

clear; clc; close;

// Given data
R1=10^2;// in ohms from the given figure
Rf=3.9*10^3;// in ohms from the given figure
Avol=10^5;// Avol of 741C

// Calculations
B=R1/(R1+Rf);// feedback fraction
Avideal=1/B;// ideal closed loop voltage gain
%error=100/(1+(Avol*B));// percentage % in closed-loop voltage gain
Avexact=Avol/(1+(Avol*B));// exact closed loop voltage gain
disp("hertz",B,"bandwidth=")
disp(Avideal,"Ideal closed-loop voltage gain=")
disp(Avexact,"exact closed-loop voltage gain=")
disp("%",%error,"percentage eroor=")

// Result
// Bandwidth is 0.025
// Ideal closed-loop voltage gain is 40
// Exact closed-loop voltage gain is 39.984
// Percentage error is 0.04%