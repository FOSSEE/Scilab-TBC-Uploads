//Example 3_4
clc();   
clear;
//To find acceleration and time taken to stop
v0=5  //units in meters/sec
vf=0   //units in meters/sec
v_1=(v0+vf)/2  //units in meters/sec
x=20   //units in meters
t=x/v_1   //units in sec
a=(vf-v0)/t  //units in meters/sec^2
printf("Acceleration is a=%.3f meters/sec^2\n",a)
printf("Time taken to stop t=%d sec",t)
