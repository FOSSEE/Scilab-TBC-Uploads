// Exa 2.12
clc;
clear;
close;
format('v',5)
// Given data
R1 = 8;// in ohm
R2 = 32;// in ohm
V = 60;// in V
I1= 5;// in A
I2= 3;// in A
// Vth-R1*I1-(I1+I2)*R2-V=0
Vth= R1*I1+(I1+I2)*R2+V
Rth = R1+R2;// in ohm
disp(Vth,"The value of Vth in volts is : ")
disp(Rth,"The value of Rth in ohm is : ");

