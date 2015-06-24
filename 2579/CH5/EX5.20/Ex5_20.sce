//Ex:5.20
clc;
clear;
close;
d=10*1000;// distance in m
wt=500;// transmeter power in Watt
wr=2*10^-6;// receiver power in Watt
Gt=10;// antenna gain
Ae=(wr*4*%pi*d^2)/(wt*Gt);// effective area in m^2
printf("The effective area = %f m^2", Ae);