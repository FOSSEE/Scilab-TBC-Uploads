//Example 1.15c
//Check whether the given signal is periodic or not
clc;
t=-20:0.01:20;
y=sin((%pi/2)*t)+cos((%pi/4)*t);
plot(t,y);
disp('Plot shows that the given signal is periodic with period 40');