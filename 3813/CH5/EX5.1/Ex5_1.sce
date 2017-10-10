//Electric Drives:concepts and applications by V.subrahmanyam
//Example:5.1
clc;
clear;
theta1=60;//Temperature rise of motor in degree
theta2=40;//Temperature rise of motor in degree
e=0.5;//exponential value
I1=110;//current in A
I2=125;//current in A
t1=4;//Time in hour
t2=8;//Time in hour
theta=theta1/theta2;
tough=-(1/log(0.5));
thetam1=theta2/e;
thetam2=thetam1*(I2/I1)^2;
x=t1/(theta1*tough);
a=exp(-x);
y=t2/(theta1*tough);
b=exp(-y);
thetam=I2*((1-a)/(1-(a*b)));
disp(thetam,"The final temperature in deg is:")
