//Example 3_5
clc();
clear;
//To calculate the speed and time to cover
a=4  //units in meters/sec^2
x=20   //units in meters
vf=sqrt(a*x*2)  //units in meters/sec
t=vf/a  //units in sec
printf("Speed vf=%.2f meters/sec\n",vf)
printf("Time taken T=%.2f sec",t)
