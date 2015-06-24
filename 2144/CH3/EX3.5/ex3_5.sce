// Exa 3.5
clc;
clear;
close;
// Given data
P1 = 1.1;// in MN/m^2
P1 = P1 * 10^6;// in N/m^2
V1 = 1.5;// in m^3
V2 = 7.5;// in m^3
P2 = (P1*V1)/V2;// in kN/m^2
P2 = P2 * 10^-6;// in MN/m^2
P2 = P2 * 10^3;// in kN/m^2
disp(P2,"The final pressure in kN/m^2 is");
W = P1*V1*log(V2/V1);// in J
W = W * 10^-3;// in kJ
disp(W,"The work done in kJ is");

// Note : There is an error in calculation to find the value of Work Done. So the answer in the book is wrong
