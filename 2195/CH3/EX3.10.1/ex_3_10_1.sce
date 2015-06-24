//Example 3.10.1// multiplier
clc;
clear;
close;
//given data :
V1=200;//in V
V2=100;//in V
V3=10;// in V
Rm=100;//in ohm
I_fsd=50*10^-3;
//for the range 0-10V   
Rt3=V3/I_fsd;
Rs3=Rt3-Rm;
disp(Rs3," the multiplier,Rs3(ohm) = ")
//for the range 0-100V
Rt2=V2/I_fsd;
Rs2=Rt2-(Rm+Rs3);
disp(Rs2,"the multiplier,Rs2(ohm) = ")
Rt1=V1/I_fsd;
Rs1=Rt1-(Rm+Rs3+Rs2);
disp(Rs1,"the multiplier,Rs1(ohm) = ")
