//Ex:9.11
clc;
clear;
close;
Vs=10^5;// saturation in m/s
W=7*10^-6;// depletion layer width in m
tr=W/Vs;// transit time in sec
printf("The transit time =%f ps", tr*10^12);