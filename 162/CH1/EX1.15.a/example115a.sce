//Example 1.15a
//Check whether the given signal is periodic or not
clc;
t=-10:0.01:10;
y=cos(t+(%pi/3));
plot(t,y);
disp('Plot shows that the given signal is periodic with period 2*%pi');