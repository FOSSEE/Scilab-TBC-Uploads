//Example 1.20.1: Turn Off Time
clc;
clear;
close;
//given data :
format('v',6)
Vs=200;//in volts
R1=10;// in ohm
R2=R1;
C=5;// in micro-farad
Tc=(R1*C)/1.44;
disp(Tc,"The Circuit Turn Off Time,Tc(micro-sec) = ")
