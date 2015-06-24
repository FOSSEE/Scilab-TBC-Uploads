//Scilab Code for Example 1.1 of Signals and systems by
//P.Ramakrishna Rao
//Determine whether the given signal is periodic or not
//x(t)=10*(cos(10*pi*t))^2
clc;
clear;
syms t;
x=10*(cos(10*%pi*t))^2;
disp(x,'x(t)');
t=0:0.01:1;
x=10*(cos(10*%pi*t))^2;
t=0:0.01:1;
plot(t,x,'r')
title('x(t)');
xlabel('Time in seconds');
disp('the signal is plotted and it shows it is periodic');
