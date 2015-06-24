//page 288
//Example 8.15
clc;
clear;
close;
//part c
disp('f = (sqrt(2)*cos(2*pi*t) + sqrt(2)*sin(4*pi*t))^2');
disp('Integration (f dt) in limits 0 to 1 = ');
x0 = 0;
x1 = 1;
X = integrate('(sqrt(2)*cos(2*%pi*t) + sqrt(2)*sin(4*%pi*t))^2','t',x0,x1);
disp(X);
//end
