//Ex 5.9
clc;
disp('x(t)=cos(200%pi*t+theta)');
w=200*%pi;
f=w/(2*%pi);
nyquist_rate=2*f;
disp(nyquist_rate,'Minimum sampling frequency to avoid aliasing is');