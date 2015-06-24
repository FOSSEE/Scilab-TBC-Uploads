// find ac output voltage
// Electronic Principles
// By Albert Malvino , David Bates
// Seventh Edition
// The McGraw-Hill Companies
// Example 18-12, page 687

clear; clc; close;

// Given data
Rf=100*10^3;// in ohms from the given figure
R1=20*10^3;// in ohms from the given figure
R2=10*10^3;// in ohms from the given figure
R3=50*10^3;// in ohms from the given figure
V1=100*10^-3;// voltage in Vpp from the given figure
V2=200*10^-3;// voltage in Vpp from the given figure
V3=300*10^-3;// voltage in Vpp from the given figure

// Calculations
Av1cl=-Rf/R1;// cloased loop voltage gain
Av2cl=-Rf/R2;// cloased loop voltage gain
Av3cl=-Rf/R3;// cloased loop voltage gain
Vout=(Av1cl*V1)+(Av2cl*V2)+(Av3cl*V3);// output voltage in Vpp
disp("Vpp",Vout,"output voltage=")

// Result
// Output voltage is -3.1 Vpp