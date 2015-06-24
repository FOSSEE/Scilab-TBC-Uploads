// Exa 1.27
clc;
clear;
close;
format('v',5)
// Given data
R1 = 8;// in ohm
R2 = 4;// in ohm
R3 = 4;// in ohm
R4 = 4;// in ohm
R5 = 8;// in ohm
R6 = 8;// in ohm
I=10;// in A
V= 20;// in V
// Applying KVL in ABEFA : I1*(R1+R2+R3)+I2*(R3)= I*R2-V    (i)
// Applying KVL in BCDEB : I1*R3-I2*(R3+R4+R5)= R4*I+V      (ii)
A= [(R1+R2+R3) R3; R3 -(R3+R4+R5)];
B= [I*R2-V R4*I+V];
I= B*A^-1;//// Solving equations by matrix multiplication
I1= I(1);// in A
I2= I(2);// in A
disp(I1,"The value of I1 in A is : ");
disp(I2,"The value of I2 in A is : ");
