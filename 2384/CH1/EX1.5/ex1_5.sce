// Exa 1.5
clc;
clear;
close;
format('v',7)
// Given data
R1= 40;// in ohm
R2= 20;// in ohm
R3= 25;// in ohm
R4= 60;// in ohm
R5= 50;// in ohm
V1= 120;// in V
V2= 60;// in V
V3= 40;// in V
// Applying KVL in Mesh ABEFA, we get  -I1*(R1+R2+R3)+I2*R3=V2-V1       (i)
// Applying KVL in Mesh BCEDB, we get  R3*I1-I2*(R3+R4+R5)= V3-V2       (ii)
A= [-(R1+R2+R3) R3; R3 -(R3+R4+R5)];
B= [V2-V1 V3-V2];
I= B*A^-1;//Solving eq(i) and (ii) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
disp(I1,"The value of I1 in A is : ");
disp(I2,"The value of I2 in A is : ");
