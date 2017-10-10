//Example 3_12
clc();
clear;
//To find out where the ball will hit the ground
//Horizontal
y=2  //units in meters
a=9.8  //units in meters/sec^2
t=sqrt(y/(0.5*a))  //units in sec
v=15  //units in meters/sec
x=v*t  //units in sec
printf("The ball hits the ground at x=%.2f meters",x)
