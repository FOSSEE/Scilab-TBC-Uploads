//Example 4_7
clc();
clear;
//To estimate the lower limit for the speed
//In a practical situation u should be atleast 0.5
u=0.5
g=9.8   //units in meter/sec^2
x=7   //units in meters
v0=sqrt(2*u*g*x)   //units in meters/sec
printf("The lower limit of the speed v0=%.1f meter/sec",v0)
