clear all; clc;
disp("Ex 8_2")
//Dimension x is used to locate th position of the normal force N
//slipping impends at theta=25 degrees
theta=25*%pi/180
// friction force is Fs=mu_s*N
mu_s=tan(theta)
printf('\n\n mu_s = %0.3f',mu_s)
