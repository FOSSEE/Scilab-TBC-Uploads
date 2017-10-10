//Example 3_7
clc();
clear;
//To calculate the time taken to travel
v0=16.7  //units in meters/sec
a=1.5  //units in meters/sec^2
x=70  //units in meters
t=-((-v0)+sqrt(v0^2-(4*(a/2)*x)))/(2*(a/2))  //units in sec
printf("Time taken to travel T=%.1f sec",t)
