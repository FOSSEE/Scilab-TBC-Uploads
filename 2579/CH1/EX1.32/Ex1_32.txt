//Ex:1.32
clc;
clear;
close;
r=15*10^3;// distance in m
r1=25*10^3;// distance in m
Erms_Erms1=r1/r;// the ratio of Erms to Erms1
Erms=25;// mV/m;// electric field strength in mV/m
Erms1=Erms/Erms_Erms1;// electric field strength in mV/m at a point 25 away in the same direction
printf("The electric field strength = %d mV/meter", Erms1);