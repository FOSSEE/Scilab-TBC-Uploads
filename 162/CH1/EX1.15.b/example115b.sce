//Example 1.15b
//Check whether the given signal is periodic or not
clc;
t=-10:0.01:10;
y=sin((2*%pi/5)*t);
plot(t,y);
disp('Plot shows that the given signal is periodic with period 5');