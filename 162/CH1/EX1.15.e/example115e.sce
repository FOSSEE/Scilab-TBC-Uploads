//Example 1.15e
//Check whether the given signal is periodic or not
clc;
t=-20:0.01:20;
y=sin(t)+cos(sqrt(3)*t);
plot(t,y);
disp('Plot shows that the given signal is NOT periodic');