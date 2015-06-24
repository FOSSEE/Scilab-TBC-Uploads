//Example 1.73// percentage error
clc;
clear;
I=4.5;//current in ampere
V=230;//volts
pf=1;//power factor
n=10;//no. of revolutions
t=360;//total time in seconds
nr=185;//normal disc no. of revolutions per kWh
E=((V*I*pf*190)/(3600*1000));//energy consumed in 190 seconds in kWh
Er= n/nr;//energy recorded by the meter
Per=((Er-E)/E)*100;//percentage error
disp(-Per,"percentage error is (slow),(%)=")
//answer is calculated wrong in the textbook because in calculation of percentage error it is not divided by the actual value
