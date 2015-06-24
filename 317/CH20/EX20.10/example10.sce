// find maximum,minimum voltage gain
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 20-10, page 771

clear; clc; close;

// Given data
Rdsmin=50;// in ohms
Rdsmax=120*10^3;// in ohms
R1=1*10^3;// in ohms
R2=47*10^3;// in ohms
R3=100*10^3;// in ohms

// Calculations
Avmax=((R2/R1)+1)*(Rdsmax/(Rdsmax+R3));// maximum voltage gain
Avmin=((R2/R1)+1)*(Rdsmin/(Rdsmin+R3));// minimum voltage gain
disp(Avmin,"minimum voltage gain=")
disp(Avmax,"maximum voltage gain=")

// Result
// Minimum voltage gain is 0.024
// Maximum voltage gain is 26.2