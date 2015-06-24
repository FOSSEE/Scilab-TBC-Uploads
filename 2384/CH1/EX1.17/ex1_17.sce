// Exa 1.17
clc;
clear;
close;
format('v',7)
// Given data
R1= 4;// in ohm
R2= 5;// in ohm
R3= 10;// in ohm
R4= 6;// in ohm
R5= 4;// in ohm
V1= 15;// in V
V2= 30;// in V
//Applying KCL at node A:  VA*(R1*R2+R2*R3+R3*R1)+VB*-R1*R2 = V1*R1*R3                 (i)
//Applying KCL at node B:  VA*R4*R5+VB*-(R3*R4+R4*R5+R5*R3) = -V2*R3*R4                (ii)
A=[(R1*R2+R2*R3+R3*R1) R4*R5; -R1*R2 -(R3*R4+R4*R5+R5*R3)]
B= [V1*R1*R3 -V2*R3*R4];
V= B*A^-1;// Solving eq(i) and (iii) by Matrix method
VA= V(1);// in V
VB= V(2);// in V
I10_ohm= abs((VA-VB)/R3);// in A
disp(I10_ohm,"The current through 10 ohm resistor from right to left in A is : ")
