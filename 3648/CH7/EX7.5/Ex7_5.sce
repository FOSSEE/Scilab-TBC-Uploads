//Example 7_5
clc();
clear;
//To find the angular acceleration and angular velocity of one wheel
vtf=20   //units in meters/sec
r=0.4    //units in meters
wf=vtf/r   //units in rad/sec
vf=20   //units in meters/sec
v0=0    //units in meters/sec^2
t=9   //units in sec
a=(vf-v0)/t   //units in meters/sec^2
alpha=a/r     //units in rad/sec^2
printf("Angular accelertion is a=%.2f meters/sec^2\n",a)
printf("Angular velocity is alpha=%.2f rad/sec^2",alpha)
