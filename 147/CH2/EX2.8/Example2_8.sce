//Resistance R, Voltage V
close();
clear;
clc;
R1 = 6;//ohm
R2 = 1;
R3 = 2;
R4 = 3;
R5 = 10;
V1 = 10;//V
V2 = 20;
//Solving Nodal equations
A = [1/R1+1/R2+1/R3 -1/R3;-1/R3 1/R3+1/R4+1/R5];
C = [V1/R1;V2/R5];
B = inv(A)*C;
V3 = B(1,1);
V4 = B(2,1);
I = (V4-V2)/R5;
mprintf('I = %0.2f A',I);