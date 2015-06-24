//Scilab Code for Example 1.3(a) of Signals and systems by
//P.Ramakrishna Rao
//Determine whether the given signal is periodic or not
//x(t)=3*cos(0.4*pi*t)+2*sin(0.66*t)
clc;
clear;
syms t;
x=3*cos(0.4*%pi*t)+2*sin(0.66*t);
disp(x,'x(t)');
t=0:1/50:50;
x=3*cos(0.4*%pi*t)+2*sin(0.66*t);
t=0:1/50:50;
plot(t,x);
title('x(t)');
xlabel('Time in seconds');
disp('plotted the signal and shown that it is not periodic and is increasing');
