//Example 9.7.a //find ampere-hour efficiency
clc;
clear;
close;
I=30;// in amperes
t=6;// in hours
Vt=2;// terminal voltage
Ic=40;// in amperes
tc=5;// in hours
Vc=2.5;// in volts
Aho=I*t;// ampere hour output of the battery
Ahi=Ic*tc;// ampere hour input of the battery
nAh=(Aho/Ahi)*100;// ampere hour efficiency
disp(nAh,"ampere hour efficiency of the battery in percentage is")

