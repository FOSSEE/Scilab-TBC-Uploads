//Example 9.7.b //find watt-hour efficiency
clc;
clear;
close;
I=30;// in amperes
t=6;// in hours
Vt=2;// terminal voltage
Ic=40;// in amperes
tc=5;// in hours
Vc=2.5;// in volts
Who=I*t*Vt;// watt hour output of the battery
Whi=Ic*tc*Vc;// watt hour input of the battery
nWh=(Who/Whi)*100;// ampere hour efficiency
disp(nWh,"watt hour efficiency of the battery in percentage is")

