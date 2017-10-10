//Example 7_9
clc();
clear;
//To find out the angle where it should be banked
v=25   //units in meters/sec
r=60   //units in meters
g=9.8   //units in meters/sec^2
tantheta=v^2/(r*g)      //units in radians
theta=atan(tantheta)*180/%pi
printf("The angle where it should be banked is theta=%d degrees",round(theta))
