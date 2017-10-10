// SAMPLE PROBLEM 3/14
clc;clear;funcprot(0);
// Given data
F=800;// lb
v=4;/// ft/sec
P=6;// The power output of the winch in hp
P_i=8;// hp
theta=30;// degree
g=32.2;// The acceleration due to gravity in ft/sec^2

// Calculation
N=F*cosd(theta);// lb
// SigmaF_x=0;
T=(P*550)/v;// The tension in the cable in N
mu_k=(T-(F*sind(theta)))/N;// The coefficient of kinetic friction
T=(P_i*550)/v;// lb
a=(T-(N*mu_k)-(F*sind(theta)))*(g/F);// The acceleration in ft/sec^2
printf("\nThe corresponding instantaneous acceleration of the log,a=%2.2f ft/sec^2",a);
