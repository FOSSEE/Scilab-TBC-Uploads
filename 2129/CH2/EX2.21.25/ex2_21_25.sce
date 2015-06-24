// Exa 2.21.25
clc;
clear;
close;
// Given data
format('v',13)
KT = 0.0259;
A = 0.5;// in cm^2
Toh_p = 10^-10;// in sec
p_o = 10^17;// in per cm^3
del_p = 5 * 10^16;// in per cm^3
x = 10^-5;// in cm
Mu_p = 500;// in cm^2/V-S
q = 1.6 * 10^-19;// in C
D_p = KT * Mu_p;// in cm/s
L_p = sqrt(D_p * Toh_p);// in cm
p = p_o * del_p * (%e^(x/L_p));// in per cm^3
I_p =q * A * (D_p/L_p) * del_p * (%e^(x/L_p));// in A
disp(I_p,"The hole current in A is");
Q_p = q * A * del_p * L_p;// in C 
disp(Q_p,"The hole charge in C is");

// Note: There is a calculation error to evalaute the value of hole current but they putted correct value of it to evaluate the value of Qp.
//          Hence the value of hole current in the book is wrong
