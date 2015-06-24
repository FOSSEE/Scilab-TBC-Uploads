// Exa 5.14
clc;
clear;
close;
// Given data
totalPulse= 174;// unit less
t=100;//time period of total pulses in miu s
t=t*10^-6;// in sec
t1= t/totalPulse;// time period of one pulse in sec
f= 1/t1;// frequency in Hz
f=f*10^-6;// in MHz
disp(f,"Frequency in MHz");
resolution= totalPulse/t;// in sec
resolution=resolution*10^-6;// per micro sec
disp(resolution,"Resolution of measurement per micro sec")
