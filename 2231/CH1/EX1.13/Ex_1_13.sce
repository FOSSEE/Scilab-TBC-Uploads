//Example 1_13
clc;
clear;close;

//Given data: 
V=130;//V
R=100;//ohm
theta1=60;//degree
theta2=45;//degree
v=sqrt(2)*V;//
Irms=sqrt(1/2/%pi*integrate('(3.25*sin(omega_t))^2','omega_t',theta1*%pi/180,%pi));//A
P=Irms^2*R;//W
disp(P,"(a) Power supplied to load (in W) : ");
Irms=sqrt(1/2/%pi*integrate('(3.25*sin(omega_t))^2','omega_t',theta2*%pi/180,%pi));//A
P=Irms^2*R;//W
disp(P,"(a) Power supplied to load (in W) : ");
