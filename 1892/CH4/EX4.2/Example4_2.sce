// Example 4.2

clear; clc; close;
format('v',7);

// Given data
Tst=1; //  in N-m
Ist=5;//in Ampere
V=28;//in volt

//Calculations
kf=Tst/Ist;//in Nm/A
omega_m=V/kf//in radian/sec
No=omega_m*60/(2*%pi)//in rpm
disp(No,"No load speed in rpm = ");
