//Example 8.6 //current
clc;
clear;
close;
V=220;// in volts
 I=60;// in amperes
 rpm=728;//turns
 Ts=150;//shaft torque in N-m
 nc=80;//commercial efficiency in percentge
 I=((Ts*2*%pi*rpm*746)/(60*746*(nc/100)*V));// CURRENT TAKEN IN AMPERES
disp(round(I),"current taken in amperes is")
