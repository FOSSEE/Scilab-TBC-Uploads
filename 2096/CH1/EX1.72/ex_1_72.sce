
//Example 1.72// percentage error
clc;
clear;
I=5;//current in ampere
V=230;//volts
pf=1;//power factor
n=60;//no. of revolutions
t=360;//total time in seconds
nr=520;//normal disc no. of revolutions per kWh
E=((V*I*pf*360)/(3600*1000));//energy consumed in 360 seconds in kWh
Er= n/nr;//energy recorded by the meter
Per=((Er-E)/E)*100;//percentage error
disp(Per,"percentage error is (fast)")
