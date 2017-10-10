//Example 3_2
clc();   
clear;
//To calculate the Acceleration
v1=20  //units in meters/sec
v2=15  //units in meters/sec
t1=0  //units in sec
t2=0.5  //units in sec
c_v=v2-v1   //units in meters/sec
c_t=t2-t1   //units in sec
acceleration=c_v/c_t  //units in meters/sec^2
printf("Acceleration a=%d meters/sec^2",acceleration)
