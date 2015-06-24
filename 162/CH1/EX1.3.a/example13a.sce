//Example 1.3a
//Find whether the the given signal is energy or power signal
clc;
A=0.5;
phi=0;
t=0:0.001:10;
y=A*sin(2*%pi*t+phi);
P=(integrate('A^2*(sin(2*%pi*t))^2','t',0,2*%pi))/(2*%pi);
disp(P,'Power of the signal is');
disp('Since the power of the given signal is finite so we can say that this signal is a power signal');