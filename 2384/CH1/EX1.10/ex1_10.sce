// Exa 1.10
clc;
clear;
close;
format('v',7)
// Given data
R1= 5;// in ohm
R2= 5;// in ohm
R3= 10;// in ohm
R4= 10;// in ohm
R5= 5;// in ohm
V1= 50;// in V
V2= 20;// in V
//Applying KCL at node A:  VA*(R1*R3+R3*R2+R2*R1)+VB*-R1*R3 = V1*R2*R3                 (i)
//Applying KCL at node B:  VA*R4*R5+VB*-(R2*R4+R4*R5+R5*R2) = -V2*R2*R4              (ii)
A=[(R1*R3+R2*R3+R2*R1) R4*R5; -R1*R3 -(R2*R4+R4*R5+R5*R2)]
B= [V1*R2*R3 -V2*R2*R4];
V= B*A^-1;// Solving eq(i) and (ii) by Matrix method
VA= V(1);// in V
VB= V(2);// in V
I_through_R3= VA/R3;// in A
I_through_R4= VB/R4;// in A
disp(I_through_R3,"The current in R3 in A is : ")
disp(I_through_R4,"The current in R4 in A is : ")

