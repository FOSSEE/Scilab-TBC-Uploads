//Example 4_1
clc();
clear;
//To calculate the force required
vf=12  //units in meters/sec
v0=0   //units in meters/sec
t=8  //units in sec
a=(vf-v0)/t   //units in meters/sec^2
m=900  //units in Kg
F=m*a  //units in Newtons
printf("The force required is F=%d N",F)
