//Scilab Code for Example 1.5 of Signals and systems by
//P.Ramakrishna Rao
//Determine whether the given signal is periodic or not
//x(t)=cos(t)+sin(sqrt(2)*t)
clc;
clear;
syms t;
x=cos(t)+sin(sqrt(2)*t);
disp(x,'x(t)');
for t=0:1:100;
x(t+1)=cos(t)+sin(sqrt(2)*t);
end
t=0:1:100;
plot(t,x);
title('x(t)');
xlabel('Time in seconds');
disp('plotted the signal and shown that it is not periodic');
