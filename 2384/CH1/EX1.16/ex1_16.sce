// Exa 1.16
clc;
clear;
close;
format('v',7)
// Given data
R1= 10;// in ohm
R2= 5;// in ohm
R3= 5;// in ohm
R4= 5;// in ohm
V2= 10;// in V
I= 1;// in A
V1= R4*I;// in V
//Applying KVL in ABEFA :  I1*(R1+R2+R3) + R1*I2 = V1  (i)
//Applying KVL in BCDEB :  I1*R1+I2*(R1+R4) =V2            (ii)
A= [(R1+R2+R3) R1; R1 (R1+R4)];
B= [V1 V2];
I= B*A^-1;// Solving eq(i) and (ii) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
I10_ohm= I1+I2;// in A
disp(I10_ohm,"The current through 10 ohm resistor in A is : ")
