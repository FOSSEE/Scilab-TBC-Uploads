// Example 3.4

clear; clc; close;

format('v',6);
// Given data
Beta=3;//in degree
Revolution=25;//no. of revolutions
f=3600;//stepping frequency in pps

//Calculations
Resolution=360/Beta;//in step/res
disp(Resolution,"(a) Resolution(step/res) : ");
steps=Resolution*Revolution;//no. of steps
disp(steps,"(b) No. of steps required : ");
speed=Beta*f/360;//in nps
disp(speed,"(c) Shaft speed in nps : ");
