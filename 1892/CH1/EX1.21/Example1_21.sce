// Example 1.21

clear; clc; close;
format('v',7);
// Given data
P=4;//no. of poles
f=50;//in Hz
P2=3000;//in watts

//Calculations
Ns=120*f/P;//in rpm
T=P2/(2*%pi*Ns/60);//in N-m
disp(T,"Torque Devloped in N-m : ");
T=T*(2*%pi*Ns/60);//in syn. Watt
disp(T,"Torque Devloped in syn. Watt : ");
