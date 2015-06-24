//Example 1.16
//Determine the power of the signal
clc;
A=2;
theta=0;
t=0:0.001:10;
y=A*cos(2*%pi*t+theta);
P=(integrate('A^2*(cos(2*%pi*t))^2','t',0,2*%pi))/(2*%pi);
disp(P,'power of the signal is:');
y=round(P);
disp(y,'The given signal is power signal as power is finite');
