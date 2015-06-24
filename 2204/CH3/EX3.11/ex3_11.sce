// Exa 3.11
clc;
clear;
close;
// Given data
A_v = -8;
V_in= -1;// in V
I1 = 15;// in µA
I1 = I1 * 10^-6;// in A
R1 = -(V_in)/I1;// in ohm
R1 = R1 * 10^-3;// in k ohm
disp(R1,"Minimum value of R1 in kΩ is");
R_F = -(A_v)*R1;// in  k ohm
disp(R_F,"The minimum value of R_F in kΩ is");

// Note: There is calculation error in the book to find the value of R_F so the answer in the book is wrong.
