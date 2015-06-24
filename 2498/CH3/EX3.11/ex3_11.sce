// Exa 3.11
clc;
clear;
close;
format('v',6)
// Given data
I_Z = 0.2;// in A
R = 10;// in ohm
V_Z = 8 + (R*I_Z);// in V
I_Lmin = V_Z/R;// in A
I_Zmax = 0.2;//in A
Vimax = 15;// in V
// The minimum value of R
Rimin = (Vimax-V_Z)/(I_Zmax+I_Lmin);// in ohm
disp(Rimin,"The minimum value of R in ohm is");

// Note: The calculation in the book is not accurate, So the answer in the book is not accurate.
