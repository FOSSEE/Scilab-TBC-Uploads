// Exa 1.4
clc;
clear;
close;
format('v',7)
// Given data
R1= 6;// in ohm
R2= 2;// in ohm
R3= 5;// in ohm
I2= 4;// in A
V=24;//in V
// Applying KVL to the loop ABCDA, -R1*I1-R3*I+V=0  (i)
// but I1= I+I2 , so from eq(i)
I= (V-R1*I2)/(R1+R3);// in A
disp(I,"The current in A is");
