//Example 4_2
clc();
clear;
//To find the friction force that opposes the motion
F1=500  //units in Newtons
F2=800  //units in Newtons
theta=30  //units in degrees
Fn=F1+(F2*sin(theta*%pi/180))  //units in Newtons
u=0.6
f=u*Fn   //units in Newtons
printf("The Frictional force that is required is f=%d N",f)
