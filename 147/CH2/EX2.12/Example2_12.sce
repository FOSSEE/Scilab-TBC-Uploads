//Resistance R, Current source , Voltage source V1
close();
clear;
clc;
R1 = 30;//ohm
R2 = 20;//ohm
R3 = 10;//ohm
R4 = 5;//ohm
I = 10;//A
V = 100;//V
//Convertng Current source to voltage source
V1 = I*R4;
//Solving mesh equations
A = [R2+R3+R4 -R2; -R2 R1+R2];
C = [V1;-V];
B = inv(A)*C;
I1 = B(1,1);
I2 = B(2,1);
mprintf('I1 = %0.2f A \nI2 = %0.2f A',I1,I2);