// Exa 6.10
clc;
clear;
close;
format('v',6)
// Given data
Ao = 10;
// Ao = (1+(R_F/R1));
//Given that maximum value of resistor should not exceed 30 kΩ, so we select
R_F= 27;// in k ohm
R1= R_F/(Ao-1);// in k ohm
disp(R_F,"The value of R_F in k ohm is");
disp(R1,"The value of R1 in k ohm is");
