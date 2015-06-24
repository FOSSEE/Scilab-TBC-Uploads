// Exa 1.14
clc;
clear;
close;
format('v',6)
// Given data
R1= 2;// in ohm
R2= 6;// in ohm
R3= 3;// in ohm
V1= 10;// in V
V2= 6;// in V
V3= 2;// in V
//Applying KVL in ABEFA  :  I1*(R1+R2) - R2*I2=V1-V2                  (i)
//Applying KVL in BCDEB  :  -I1*R2+I2*(R2+R3)=V2-V3                   (ii)
A= [(R1+R2) -R2; -R2 (R2+R3)];
B= [(V1-V2) (V2-V3)];
I= B*A^-1;// Solving eq(i),  and (ii) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
disp(I1,"The value of I1 in A is : ")
disp(I2,"The value of I2 in A is : ")

