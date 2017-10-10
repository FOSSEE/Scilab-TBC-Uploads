//Example 6_2
clc();
clear;
//To estimate the average stopping force the tree exerts on the car
m=1200  //units in Kg
vf=0   //units in meters/sec
v0=20   //units in meters/sec
v=0.5*(vf+v0)   //units in meters/sec
s=1.5   //units in meters
t=s/v   //units in sec  
f=((m*vf)-(m*v0))/t   //Units in Newtons
printf("The average stopping force the tree exerts on the car is F=")
disp(f)
printf("Newtons")
