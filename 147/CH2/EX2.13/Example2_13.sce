close();
clear;
clc;
I1 = 10; //A
I2 = 100; //A
R1 = 5; //ohm
R2 = 10; //ohm
R3 = 20; //ohm
R4 = 30; //ohm
//applying KCL
A = [(1/R1+1/R2) (-1/R2);(1/R2) (-1/R2-1/R4-1/R3)];
C = [I1;-I2/R4];
B = inv(A)*C;
V1 = B(1,1);
V2 = B(2,1);
I1 = (V1-V2)/R2;
I2 = (V2-I2)/R4;
mprintf("I1 = %0.2f A\nI2 = %0.2f A",I1,I2);