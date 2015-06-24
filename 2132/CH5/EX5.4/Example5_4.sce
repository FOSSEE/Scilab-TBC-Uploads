//Example 5.4
clc;
clear;
close;
format('v',8);
//Given data :
p=0.8/10^-4;//kg/m^2
datumH=4;//meter
v=0.8;//m/s
g=9.81;//constant
VelocityH=v^2/2/g;//m
w=1000;//kg/m^3
PressureH=p/w;//meter of fluid
TotalH=datumH+VelocityH+PressureH;//meter of fluid
disp("Total Energy is "+string(TotalH)+" meter.");
