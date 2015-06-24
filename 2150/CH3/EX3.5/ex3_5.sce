// Exa 3.5
clc;
clear;
close;
// Given data
I_Z = 2*10^-3;// in A
R_Z = 8.5;// in V
del_VL = I_Z*R_Z;// in V
V1 = 10;// in V
disp(del_VL,"Change in load voltage in V is");
V_L = V1 + del_VL;// in V
disp(V_L,"The load voltage in V is");

// Note: There is calculation error to evaluate the value of del_VL. So the answer in the book is wrong.
