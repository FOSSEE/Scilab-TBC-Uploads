//Example 8 //displacement ,particle velocity and acceleration
clc;
clear;
close;
//y=a*sin*((2*%pi)/h)*(vt-x);//
v=1000;//cm/s
n=25;//vibrations
h=v/n;//cm
a=3;//cm
t=2;//seconds
x1=200;//cm
y=3*sind(((2*360)/h)*(v*t-x1));//
vl=2*%pi*a*n;//cm/s
acc=0;//
disp(y,"displacement is,(cm)=")
disp(vl,"velocity is,(cm/s)=")
disp(acc,"acceleration is,(cm/s^2)=")
