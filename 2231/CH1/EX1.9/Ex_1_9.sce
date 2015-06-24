//Example 1_9
clc;
clear;close;

//Given data: 
V=240;//Volt
f=50;//Hz
R=5;//ohm
L=0.05;//H
theta=atand(2*%pi*f*L/R);//degree
Vm=V*sqrt(2);//Volt
//sind(fi-theta)=0;//for no current transient
fi=theta+asind(0);//degree
disp(fi,"For no current transient, triggering angle in degree");
//sind(fi-theta)=1;//for worst current transient
fi=theta+asind(1);//degree
disp(fi,"For worst current transient, triggering angle in degree");
