//Exa 4.25
clc;
clear;
close;
// given data
C1=0.1;//in uF
f=100;//in Hz
T=1/f;//in sec
// Given also R1C1=0.2*T;
R1=(0.2*T)/(C1*10^-6);//in ohm
RF=0.05/(C1*10^-6);//in ohm
CF=(R1*C1)/RF;//in uF
disp(R1/1000,"Value of resistance R1 in ohm is : ")
disp(RF/1000,"Value of resistance RF in Kohm is : ")
disp(CF,"Value of Capacitance CF in uF is : ")
