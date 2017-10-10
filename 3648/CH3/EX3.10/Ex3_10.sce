//Example 3_10
clc();
clear;
//To find out how high does it goes and its speed and how long will it be in air 
vf=0  //units in meters/sec
v0=15  //units in meters/sec
a=-9.8  //units in meters/sec^2
y=(vf^2-v0^2)/(2*a)   //units in meters
printf("Distance it travels is y=%.1f meters\n",y)
vf=-sqrt(2*a*-y)  //units in meters/sec
printf("The speed is vf=%d meters/sec\n",vf)
t=vf/(0.5*a)  //units in sec
printf("Time taken is T=%.2f sec",t)
