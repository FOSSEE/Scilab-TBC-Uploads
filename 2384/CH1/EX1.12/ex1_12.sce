// Exa 1.12
clc;
clear;
close;
format('v',7)
// Given data
V1 = 12;// in V
V2 = 10;// in V
VB = 0;// in V
R1 = 2;// in ohm
R2 = 1;// in ohm
R3 = 10;// in ohm
// Using KCL at node A :
VA= (V1*R2*R3+V2*R3*R1)/(R1*R2+R2*R3+R3*R1);// in V
I1 = (V1-VA)/R1;// in A
I2 = (V2-VA)/R2;// in A
I3 = (VA-VB)/R3;// in A
disp(I1,"The value of I1 in A is : ")
disp(I2,"The value of I2 in A is : ")
disp(I3,"The value of I3 in A is : ")
