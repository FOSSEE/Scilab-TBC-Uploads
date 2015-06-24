//Example 1.49a
//Determine whether the signal x(n)=sin(7/9*pi*(n^2)+1)
clc;
n=0:1/100:5
x=sin((7/9)*%pi*(n^2)+1)
plot(x);
disp('this shows that signal is NOT periodic');