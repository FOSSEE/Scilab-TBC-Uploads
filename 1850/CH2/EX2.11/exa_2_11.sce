// Exa 2.11
clc;
clear;
close;
// Given data
format('v',9)
dV_out=20;// in volt
dt= 4;// in micro seconds
SR= dV_out/dt;// in V/micro sec
disp(SR,"Slew rate in V/micro sec");

