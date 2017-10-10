//Example 3_8
clc();
clear;
//To calculate the acceleration
vf=30  //units in meters/sec
v0=0  //units in meters/sec
t=9  //units in sec
a=(vf-v0)/t  //units in meters/sec^2
a=a*(1/1000)*(3600/1)*(3600/1)  //units in km/h^2
printf("Acceleration a=%d km/h^2",a)
