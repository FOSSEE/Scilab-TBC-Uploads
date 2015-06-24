// Example 3.7.3:amlitude of first four harmonic components
clc;
clear;
close;
format('v',7)
io=1;//assume
alpha=%pi/2;//
n=[0;0;(1/(%pi*3));0;(1/(%pi*5));0;(1/(%pi*7));0;(1/(%pi*9))];//
for i= [3;5;7;9]
    m(i)=((2*sqrt(2))*cos(((i)*alpha)/2));
end
x=[0;0;m(3)*n(3);0;m(5)*n(5);0;m(7)*n(7);0;m(9)*n(9)];//
for i=[3;5;7;9]
    disp("RMS value of "+string(i)+" harmonic is I"+string((i))+"  = "+string(x(i))+"Io ")
end

