//Example 3_3
clc();   
clear;
//To find acceleration and the distance it travels in time
vf=5  //units in meters/sec
v0=0 //units in meters/sec
t=10  //units in sec
a=(vf-v0)/t   //units in meters/sec^2
v_1=(vf+v0)/2   //unis in meters/sec
x=v_1*t  //units in meters
printf("Acceleration is a=%.1f meters/sec\n",a)
printf("Distance travelled is x=%d meters",x)
