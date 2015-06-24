// Caption: Finding Torue of given system 
clear;
close;
clc;
syms x i1 i2
L_11=(3+cos(2*x))*10^(-3);
L_12=0.1*cos(x);
L_22=30+10*cos(2*x);
W=0.5*L_11*i1^2+L_12*i1*i2+0.5*L_22*i2^2;
T=diff(W,x);
disp(T,'Torque = ');
i1=1;//in Ampere
i2=0.01;//in Ampere
k=eval(T);
disp(k,'Torue of given system  = ');

