//Example 2.7.1;//current
clc;
clear;
close;
//given data :
format('v',3)
v=100;//in volts
r=20;//in ohms
t=50;//in micro seconds
l=0.5;//in henry
il=(v/r)*(1-exp(-t*10^-6*(r/l)));//
disp("load current in (mA) "+string(il*10^3)+"")
