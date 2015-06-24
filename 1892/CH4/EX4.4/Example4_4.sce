// Example 4.4

clear; clc; close;
format('v',7);

// Given data
ke=0.12;//in Nm/A
V=48;//in volt
Rph=0.15;//in Ω
Vdd=2;//in volt

//Calculations
omega_mo=V/ke//in radian/sec
No=omega_mo*60/(2*%pi)//in rpm
disp(No,"No load speed in rpm = ");

Ist=(V-Vdd)/(2*Rph);//in Ampere
Tst=ke*Ist; //  in N-m
disp(Tst,"Starting Torque  in N-m = ");
//Note : answer is wrong in the book.
