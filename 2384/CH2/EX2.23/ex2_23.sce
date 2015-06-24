// Exa 2.23
clc;
clear;
close;
format('v',5)
// Given data
R1 = 2;// in ohm
R2 = 4;// in ohm
R3 = 6;// in ohm
R4 = 4;// in ohm
V = 16;// in v
I1= 8;// in A
V1= I1*R2;// in V
I2= 16;// in A
V2= I2*R3;// in V
// Applying KVL : R2*I+V1+R3*I-V2+V+R1*I
I= (V2-V1-V)/(R1+R2+R3);// in A
Vth= V2-R3*I;// in V
Rth= (R1+R2)*R3/((R1+R2)+R3)+R4;// in ohm
disp(Vth,"The value of Vth in volts is : ")
disp(Rth,"The value of Rth in ohm is : ")
