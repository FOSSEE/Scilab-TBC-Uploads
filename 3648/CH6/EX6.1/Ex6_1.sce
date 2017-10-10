//Example 6_1
clc();
clear;
//To calculate how large is the average force retarding its motion
m=1500  //units in Kg
vf=15   //units in meters/sec
v0=20   //units in meters/sec
t=3  //units in sec
f=((m*vf)-(m*v0))/t   //Units in Newtons
printf("The average retarding force is F=%d Newtons",f)
