//Example 5_6
clc();
clear;
//To find out how fast the car is going
f=4000   //units in Newtons
s=50   //units in meters
theta=180   //units in degrees
m=2000    //units in Kg
v0=20   //units in meter/sec
vf=sqrt((2*((f*s*cos(theta*%pi/180))+(0.5*m*v0^2)))/m)    //units in meter/sec
printf("The speed of the car is vf=%.1f meters/sec",vf)
