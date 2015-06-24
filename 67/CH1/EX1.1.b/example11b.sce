//Example 1.1b
//Determine whether the given signal is periodic or not
clc;
t=0:1/100:5
x=sin(sqrt(2)*%pi*t);
plot(x);
disp('ploting the signal and showing that itis periodic with period=2pi/sqrt(2)pi');