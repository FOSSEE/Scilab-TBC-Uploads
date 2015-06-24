//Example 1.32// expression of output
clc;
clear;
close;
//I1=2*sin(2*t)+0.2*cos(8*t);//
//I1=2*sin(2*t)-0.2*sin(8*t+%pi);//
w=2;//
t=0.15;//secomds
r=1/(sqrt(1+(w*t)^2));//
mo=w*r;//magnitude
pf=atand(w*t);//degree
//Io=mo*sin(2*t-16.7);//output
x=0.2
w1=8;//
t=0.15;//secomds
r1=1/(sqrt(1+(w1*t)^2));//
mo1=x*r;//magnitude
pf1=atand(w1*t);//degree
//Io=mo1*sin(8*t+%pi-50.19);//output
disp("Overall output is 1.956sin(2t-16.7)-0.128sin(8t+%pi-50.19)")
