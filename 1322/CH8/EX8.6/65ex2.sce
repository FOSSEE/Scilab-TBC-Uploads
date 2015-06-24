
//y=mx+b
//given x=4,y=6  and  x=2.4,y=4.5
clear;
clc;
close;
m=poly(0,'m');
b=6-4*m; //(equation 1) when x=4,y=6 
B=4.5-2.4*m;//(equation 2) when x=2.4,y=4.5
P=b-B;
disp("the solution is :");
m=roots(P)
//substitute this value 
b=6-4*m
//"substitute these values in the equation y=mx+b"
x=poly(0,'x');
y=m*x+b
