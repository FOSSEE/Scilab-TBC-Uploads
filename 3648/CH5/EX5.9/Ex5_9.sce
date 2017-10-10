//Example 5_9
clc();
clear;
//To find out how fast a a ball is going
m=3    //units in Kg
g=9.8   //units in meters/sec^2
hf=0   //units in meters
h0=4   //units in meters
vf=2*sqrt(((m*g*-(hf-h0))*0.5)/m)   //units in meters/sec
printf("The ball is moving with a speed of vf=%.2f meters/sec",vf)
