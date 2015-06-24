// Exa 1.23
clc;
clear;
close;
format('v',7)
// Given data
R1= 5;// in ohm
R2= 10;// in ohm
R3= 3;// in ohm
R4= 2;// in ohm
V1= 10;// in V
V2= 20;// in V
I= 5;// in A
//Applying KCL at node A:  VA*(R1+R2)+VB*-R1 =I*R1*R2+V1*R1                                                 (i)
//Applying KCL at node B:  VA*R3*R4+VB*-(R2*R3+R4*R3+R4*R2) =V1*R3*R4+V2*R2*R3 (ii)
A=[(R1+R2) R3*R4; -R1 -(R3*R2+R4*R3+R4*R2)]
B= [(I*R1*R2+V1*R1) (V1*R3*R4+V2*R2*R3)];
V= B*A^-1;// Solving eq(i) and (ii) by Matrix method
VA= V(1);// in V
VB= V(2);// in V
I4= (VB+V2)/R4;// in A
V4= R4*I4;// in V
disp(I4,"The current through 2 ohm resistor in A is : ")
disp(V4,"The voltage across 2 ohm resistor in V is : ")
