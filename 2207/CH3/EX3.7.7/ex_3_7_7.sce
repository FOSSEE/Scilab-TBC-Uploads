// Example 3.7.7:amlitude of first three harmonic components
clc;
clear;
close;
format('v',6)
io=1;//assume
n=[0;0;3*%pi;0;5*%pi;0;%pi*7]
for i= [3;5;7]
    m(i)=((2*sqrt(2))*io);
end
x=[0;0;m(3)/n(3);0;m(5)/n(5);0;m(7)/n(7);];//
for i=[3;5;7]
    disp("RMS value of "+string(i)+" harmonic is I"+string((i))+"  = "+string(x(i))+"Io ")
end

