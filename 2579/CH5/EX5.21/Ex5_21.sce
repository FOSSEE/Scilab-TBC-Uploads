//Ex:5.21
clc;
clear;
close;
f=150;// frequency in MHz
y=300/f;// in m
wt=10;// transmeter power in Watt
Gt=1.641;// antenna gain
d=50*10^3;// in m
E=sqrt(30*wt*Gt)/d;// electric field strength in V/m
Voc=E*y/%pi;// open circuit voltage in mV
printf("The open circuit voltage = %f mV", Voc*1000);