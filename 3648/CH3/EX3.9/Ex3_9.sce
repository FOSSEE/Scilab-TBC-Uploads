//Example 3_9
clc();
clear;
//To find how above the water is the bridge
v0=0  //units in meters/sec
t=3  //units in sec
a=-9.8   //units in meters/sec^2
y=(v0*t)+(0.5*a*t^2)  //units in meters
printf("The bridge is y=%d meters above the water",y)
