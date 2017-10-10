//Example 5_7
clc();
clear;
//To find the required tension in the rope
m=40   //units in Kg
g=9.8   //units in meters/sec^2
theta=0  //units in degrees
vf=0.3   //units in meters/sec
s=0.5   //units in meters
T=round((m*g)+((0.5*m*vf^2)/(s*cos(theta*%pi/180))))   //units in Newtons
printf("Tension in the rope is T=%d N",T)
