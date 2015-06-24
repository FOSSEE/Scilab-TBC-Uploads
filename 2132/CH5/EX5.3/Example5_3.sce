//Example 5.3
clc;
clear;
close;
format('v',7);
//Given data :
PotentialHead=2;//meter of fluid
disp("Potential Head is "+string(PotentialHead)+" meter of fluid.");
v=5;//m/s
g=9.81;//constant
VelocityHead=v^2/2/g;//m
disp("Velocity Head is "+string(VelocityHead)+" meter of fluid.");
w=g*1000;//N/m^3
S=0.8;//sp. gravity of fluid
p=200;//kPa
PressureHead=p*10^3/w/S;//meter of fluid
disp("Pressure Head is "+string(PressureHead)+" meter of fluid.");
TotalHead=PotentialHead+VelocityHead+PressureHead;//meter of fluid
disp("Total Head is "+string(TotalHead)+" meter of fluid.");
