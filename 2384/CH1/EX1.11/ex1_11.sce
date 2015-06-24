// Exa 1.11
clc;
clear;
close;
format('v',7)
// Given data
R1= 1;// in ohm
R2= 1;// in ohm
R3= 0.5;// in ohm
R4= 2;// in ohm
R5= 1;// in ohm
V1= 15;// in V
V2= 20;// in V
//Applying KCL at node A:  VA*(R1*R2+R2*R3+R3*R1)+VB*-R1*R2 = V1*R2*R3                 (i)
//Applying KCL at node B:  VA*R4*R5+VB*-(R3*R4+R4*R5+R5*R3) = V2*R3*R4                (ii)
A=[(R1*R2+R2*R3+R3*R1) R4*R5; -R1*R2 -(R3*R4+R4*R5+R5*R3)]
B= [V1*R2*R3 -V2*R3*R4];
V= B*A^-1;// Solving eq(i) and (ii) by Matrix method
VA= V(1);// in V
VB= V(2);// in V
I1= (VA-V1)/R1;// in A
I2= VA/R2;// in A
I3= (VA-VB)/R3;// in A
I4= VB/R4;// in A
I5= (VB-V2)/R5;// in A
disp(I1,"The value of I1 in A is : ")
disp(I2,"The value of I2 in A is : ")
disp(I3,"The value of I3 in A is : ")
disp(I4,"The value of I4 in A is : ")
disp(I5,"The value of I5 in A is : ")
