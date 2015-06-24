// Exa 2.26
clc;
clear;
close;
format('v',7)
// Given data
R1 = 2;// in ohm
R2 = 4;// in ohm
R_L = 4;// in ohm
V1 = 6;// in v
V2 = 12;// in V
// -R2*Ix -R1*Ix-V1+V2= 0;
Ix = (V2-V1)/(R1+R2);// in A
Vth = V1+R1*Ix;// in V
Rth = (R1*R2)/(R1+R2);// in ohm
I_N = Vth/Rth;// in A
I = (I_N*Rth)/(Rth+R_L);// in A
disp(I,"The current in A is"); 

// Note: At last, there is calculation error to find the value of I, so the answer in the book is wrong.
