//Scilab Code for Example 1.4 of Signals and systems by
//P.Ramakrishna Rao
//Determine whether the given signal is periodic or not
//x(t)=cos(7*t)+sin(4*t)
clc;
clear;
syms t;
x=sin(4*t)+cos(7*t);
disp(x,'x(t)');
t=0:1/12:12
x=sin(4*t)+cos(7*t);
t=0:1/12:12;
plot(t,x);
title('x(t)');
xlabel('Time in seconds');
disp('plotted the signal and shown that it is periodic with period of 2pi');

