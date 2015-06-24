//Example 1.25.a // the ratio of output to input
clc;
clear;
close;
//given data :
t1=50; // in seconds
t2=500; // in seconds
w=2*%pi/t2;
I=1/sqrt(1+(w*t1)^2);
disp(I,"ratio of output to input,I = ")
