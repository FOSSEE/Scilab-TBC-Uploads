//Example 1.15d
//Check whether the given signal is periodic or not
clc;
t=-10:0.01:10;
y=(cos(t))^2;
plot(t,y);
disp('Plot shows that the given signal is periodic with period %pi');