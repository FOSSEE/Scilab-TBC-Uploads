//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.2w
//calculation of the maximum force exerted by the spring on the block

//given data
m=5//masss(in kg) of the block
A=0.1//amplitude(in m) of the motion
T=3.14//time period(in s) of the motion

//calculation
w=2*%pi/T//angular frequency
k=m*w*w//spring constant
F=k*A//maximum force

printf('the maximum force exerted by the spring on the block is %d N',F)
