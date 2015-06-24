// Example 4.1 

clear; clc; close;
format('v',7);

// Given data
kf=0.12; //  in Nm/A
V=48;//in volt

//Calculations
omega_mo=V/kf//in radian/sec
No=omega_mo*60/(2*%pi)//in rpm
disp(floor(No),"No load speed in rpm = ");
