//Scilab Code for Example 1.3(b) of Signals and systems by
//P.Ramakrishna Rao
//Determine whether the given signal is periodic or not
//x(t)=5*cos((4/3)*t)+3*sin(t)
clc;
clear;
syms t;
x=5*cos((4/3)*t)+3*sin(t);
disp(x,'x(t)');
t=0:1/80:80;
x=5*cos((4/3)*t)+3*sin(t);
t=0:1/80:80;
plot(t,x);
title('x(t)');
xlabel('Time in seconds');
disp('plotted the signal and shown that it is periodic with a period of LCM of 2pi and (2pi/(4/3)');
