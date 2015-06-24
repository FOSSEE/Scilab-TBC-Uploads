// Example 3.5

clear; clc; close;

format('v',6);
// Given data
Beta=1.8;//in degree
Revolution=25;//no. of revolutions
f=4000;//stepping frequency in pps
theta=54;//required shaft rotation in degree

//Calculations
Resolution=360/Beta;//in step/res
disp(Resolution,"(i) Resolution(step/res) : ");
speed=Beta*f/360;//in rps
disp(speed,"(ii) Motor speed in rps : ");
pulses=theta/Beta;//pulses
disp(pulses,"(iii) No. of pulses required to rotate the shaft through 54 degree : ");

