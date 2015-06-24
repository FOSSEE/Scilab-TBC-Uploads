// Exa 1.6
clc;
clear;
close;
format('v',6)
// Given data
R1= 2;// in ohm
R2= 4;// in ohm
R3= 6;// in ohm
V1= 4;// in V
V2= 44;// in V
//Applying KVL in ABEFA :  -R1*I1 + R2*I2 = V1      (i)
//Applying KVL in BCDEB:  R3*I1 + I2*(R2+R3)=V2 (ii)
A= [-R1 R3; R2 (R2+R3)]; // assumed
B= [V1 V2];// assumed
I= B*A^-1;// Solving eq(i) and (ii) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
I_L= I1+I2;// in A
disp(I1,"The value of I1 in A is : ");
disp(I2,"The value of I2 in A is : ");
disp(I_L,"The value of I_L in A is : ");
