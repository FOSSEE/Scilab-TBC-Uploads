// Exa 1.13
clc;
clear;
close;
format('v',7)
// Given data
R1= 1;// in ohm
R2= 2;// in ohm
R3= 2;// in ohm
R4= 1;// in ohm
I1= 1;// in A
I5= 2;// in A
// Using KCL at node 1: V1*(R2+R3)-V2*R2= I1*R2*R3        (i)
// Using KCL at node 2: V1*R4-V2*(R3+R4)= -I5*(R3*R4)   (ii)
A= [(R2+R3) R4; -R2 -(R3+R4)];
B= [I1*R2*R3 -I5*R3*R4];
V= B*A^-1;// Solving eq(i) and (ii) by Matrix method
V1= V(1);// in V
V2= V(2);// in V
disp(V1,"The voltage at node 1 in volts is : ")
disp(V2,"The voltage at node 2 in volts is : ")

