// Exa 2.27
clc;
clear;
close;
format('v',5)
// Given data
R1 = 3;// in ohm
R2 = 6;// in ohm
R_L = 4;// in ohm
V = 27;// in V
I=3;// in A
// -I1+I2= I     (i)
// Applying KVL: I1*R1+I2*R2=V  (ii)
A= [-1 R1; 1 R2];
B= [I V]
I= B*A^-1;// Solving eq(i) and (2) by Matrix method
I1= I(1);// in A
I2= I(2);// in A
Vth= R2*I2;// in V
Rth= R1*R2/(R1+R2);// in ohm
// current in 4 ohm resistor 
I= Vth/(Rth+R_L);// in A
disp(I,"The current in 4 ohm resistor in A is : ")
