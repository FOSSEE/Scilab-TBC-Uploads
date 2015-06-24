// Exa 1.7
clc;
clear;
close;
format('v',6)
// Given data
R1= 1;// in ohm
R2= 1;// in ohm
R3= 2;// in ohm
R4= 1;// in ohm
R5= 1;// in ohm
V1= 1.5;// in V
V2= 1.1;// in V
//Applying KVL in ABCFA :  I1*(R1+R2+R3) + R3*I2 = V1      (i)
//Applying KVL in BCDEB:  R3*I1 + I2*(R3+R4+R5)=V2        (ii)
A= [(R1+R2+R3) R3; R3 (R3+R4+R5)];
B= [V1 V2];
I= B*A^-1;// Solving eq(i) and (ii) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
disp(I1,"The value of I1 in A is : ");
disp(I2,"The value of I2 in A is : ");
