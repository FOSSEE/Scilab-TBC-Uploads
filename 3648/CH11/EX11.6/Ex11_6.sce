//Example 11_6
clc();
clear;
//To findout the rise in temperature
m=0.01   //Units in Kg
v=100       //Units in meters/sec
KE=(0.5*m*v^2)/4.1808135      //units in Cal
m=10    //units in gm
c=0.031 //units in cal/gm Centigrade
t=KE/(m*c)
printf("the rise in temperature is DeltaT=%.1f C",t)
