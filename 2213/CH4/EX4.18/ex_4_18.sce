//Example 4.18//wattage of lamp
clc;
clear;
close;
format('v',6) 
d=6;//in meter
h=4;//in meter
ef=20;//lumens per watt
uc=0.5;//utilization coefficient
il=750;// in lux
a=(%pi/4)*(d)^2;//
F=a*il;//in lumens 
tf=F/uc;//total flux emitted by the lamp
watt=tf/ef;//wattage of lamp
disp(watt,"wattage of lamp in watts")
