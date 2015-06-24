
//x+y=15,3x-y=21
clear; 
clc;
close;
x=poly(0,'x');
y=15-x;      //equation 1
Y=3*x-21;    //equation 2
disp("the solution is ");
p2=y-Y;
x=roots(p2)
//substitute x value in equation 1
y=15-x

