//Example 11_11
clc();
clear;
//To findout how much ice melts each hour
s=30    //Units in cm
a=s*s*10^-4    //units in meter^2
k=0.032   //Units in W/K meter
t=25  //Units in K
l=0.040       //Units in meters
q_t=(6*k*((a*t)/l))/4.1808135    //Units in cal/sec
Q=3600*q_t    //Units in cal
qq=80    //Units in cal/gm
melted=Q/qq      //Units in gm
printf("The ice melts by %d gm",melted)
