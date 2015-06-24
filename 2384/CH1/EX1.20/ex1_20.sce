// Exa 1.20
clc;
clear;
close;
format('v',7)
// Given data
R1 = 3;// in ohm
R2 = 8;// in ohm
R3 = 4;// in ohm
R4 = 12;// in ohm
R5 = 14;// in ohm
V1 = 10;// in V
V2 = 3;// in V
V3 = 6;// in V
//Applying KCL at node A:  VA*(R1*R2+R2*R3+R3*R1)+VB*-R1*R2 = V1*R2*R3+V2*R1*R2                 (i)
//Applying KCL at node B:  VA*R4*R5+VB*-(R3*R4+R4*R5+R5*R3) = V2*R4*R5-V3*R3*R4                (ii)
A=[(R1*R2+R2*R3+R3*R1) R4*R5; -R1*R2 -(R3*R4+R4*R5+R5*R3)]
B= [(V1*R2*R3+V2*R1*R2) (V2*R4*R5-V3*R3*R4)];
V= B*A^-1;// Solving eq(i) and (ii) by Matrix method
VA= V(1);// in V
VB= V(2);// in V
I8_ohm= VA/R2;//The current through 8 ohm resistance  in A
disp(I8_ohm,"The current through 8 ohm resistance in A is : ")
