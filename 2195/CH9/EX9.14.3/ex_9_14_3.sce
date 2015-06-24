//Example 9.14.3 // period and frequency
clc;
clear;
close;
format('v',6)
vdv=2;//volts per division in micro seconds/div
n=12;//no. of divisions
Tp=vdv*n;// period in micro seconds
f=1/(Tp*10^-3);//frequency in kHz
disp(Tp,"period in micro seconds")
disp(f,"frequency in kHz")
