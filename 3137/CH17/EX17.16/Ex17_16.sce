//Initilization of variables
l=2 //m
m=4 //kg
w_1=20 //rpm
w_2=50 //rpm
rev=10 //no of revolution
//Calculations
Io=(1/3)*(m)*l^2 //kg.m^2
w1=(2*%pi*w_1)/60 //rad/s
w2=(2*%pi*w_2)/60 //rad/s
theta=2*%pi*rev //rad
M=(0.5*Io*(w2^2-w1^2))/theta //N.m
//result
clc
printf('The constant moment required is %fN.m',M)
